import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_floating_search_bar_2/material_floating_search_bar_2.dart';
import 'package:repoviewr/core/Utility/assets_data.dart';
import 'package:repoviewr/core/Utility/mediaquery_helper.dart';
import 'package:repoviewr/search/application/search_history_cubit/search_history_cubit.dart';

class ReposSearchBar extends StatefulWidget {
  final String title;
  final String hint;
  final Widget body;

  final void Function(String searchTerm) onShouldNavigateToResultPage;
  final void Function() onSignOutButtonPressed;

  const ReposSearchBar(
      {super.key,
      required this.title,
      required this.hint,
      required this.body,
      required this.onShouldNavigateToResultPage,
      required this.onSignOutButtonPressed});

  @override
  State<ReposSearchBar> createState() => _ReposSearchBarState();
}

class _ReposSearchBarState extends State<ReposSearchBar> {
  final _controller = FloatingSearchBarController();
  @override
  void initState() {
    super.initState();
    Future.microtask(() =>
        BlocProvider.of<SearchHistoryCubit>(context).watchSearchTerms(null));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FloatingSearchBar(
      leadingActions: [
        Image.asset(
          AssetsData.ocat2,
          height: context.ww * 0.1,
        ),
        AutoRouter.of(context).canPop()
            ? IconButton(
                onPressed: () {
                  AutoRouter.of(context).pop();
                },
                icon: (AutoRouter.of(context).canPop() &&
                        (Platform.isIOS || Platform.isMacOS))
                    ? const Icon(Icons.arrow_back_ios)
                    : const Icon(Icons.arrow_back))
            : const SizedBox(),
      ],
      automaticallyImplyBackButton: false,
      controller: _controller,
      body: widget.body,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const Text(
            'Tap to search 👆🏻',
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
      hint: widget.hint,
      elevation: 4,
      // backdropColor: Colors.transparent,
      accentColor: Colors.black,
      backgroundColor: Colors.white,
      scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
      openAxisAlignment: 0.0,
      onFocusChanged: (_) {
        BlocProvider.of<SearchHistoryCubit>(context).watchSearchTerms(null);
      },
      onSubmitted: (query) {
        _controller.close();
        widget.onShouldNavigateToResultPage(query);
        BlocProvider.of<SearchHistoryCubit>(context).addSearchTerm(query);
      },
      onQueryChanged: (query) {
        BlocProvider.of<SearchHistoryCubit>(context).watchSearchTerms(query);
      },
      actions: [
        FloatingSearchBarAction(
          showIfOpened: false,
          child: CircularButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              widget.onSignOutButtonPressed();
            },
          ),
        ),
        FloatingSearchBarAction.searchToClear(
          showIfClosed: false,
        ),
      ],
      transitionCurve: Curves.easeInOut,
      physics: const BouncingScrollPhysics(),
      transition: CircularFloatingSearchBarTransition(),
      builder: (context, transition) {
        return ClipRRect(
          clipBehavior: Clip.hardEdge,
          borderRadius: BorderRadius.circular(8),
          child: Card(
            color: Colors.white,
            elevation: 0,
            child: BlocConsumer<SearchHistoryCubit, SearchHistoryState>(
              listener: (context, state) {},
              builder: (context, state) {
                return state.map(
                    initial: (_) => const ListTile(
                          title: LinearProgressIndicator(),
                        ),
                    loading: (_) => const ListTile(
                          title: LinearProgressIndicator(),
                        ),
                    success: (_) {
                      return _.data.isEmpty
                          ? _controller.query == '' ||
                                  !(RegExp(r'[a-zA-Z].*[a-zA-Z]')
                                      .hasMatch(_controller.query)) ||
                                  _controller.query.isEmpty
                              ? Container(
                                  alignment: Alignment.center,
                                  height: 56,
                                  child: const Text(
                                    'Start searching...',
                                    style: TextStyle(color: Colors.grey),
                                  ))
                              : ListTile(
                                  title: Text(
                                    _controller.query,
                                    style: const TextStyle(
                                        overflow: TextOverflow.ellipsis),
                                  ),
                                  leading: const Icon(Icons.search),
                                  onTap: () {
                                    _controller.close();
                                    widget.onShouldNavigateToResultPage(
                                        _controller.query);
                                    BlocProvider.of<SearchHistoryCubit>(context)
                                        .putSearchTerm(_controller.query);
                                  },
                                )
                          : Column(
                              children: _.data
                                  .map(
                                    (query) => ListTile(
                                      title: Text(
                                        query,
                                        style: const TextStyle(
                                            overflow: TextOverflow.ellipsis),
                                      ),
                                      leading: const Icon(Icons.history),
                                      trailing: IconButton(
                                        onPressed: () {
                                          BlocProvider.of<SearchHistoryCubit>(
                                                  context)
                                              .delete(query);
                                        },
                                        icon: const Icon(Icons.close),
                                      ),
                                      onTap: () {
                                        _controller.close();
                                        widget.onShouldNavigateToResultPage(
                                            query);
                                        BlocProvider.of<SearchHistoryCubit>(
                                                context)
                                            .putSearchTerm(query);
                                      },
                                    ),
                                  )
                                  .toList(),
                            );
                    },
                    failure: (_) => ListTile(
                          title: Text('Unexpexted error ${_.failure}'),
                        ));
              },
            ),
          ),
        );
      },
    );
  }
}
