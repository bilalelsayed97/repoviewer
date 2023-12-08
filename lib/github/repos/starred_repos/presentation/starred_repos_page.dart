import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repoviewr/auth/application/auth_cubit/auth_cubit.dart';
import 'package:repoviewr/core/routes/app_router.gr.dart';
import 'package:repoviewr/github/repos/starred_repos/application/starred_repos/starred_repos_cubit.dart';
import 'package:repoviewr/github/repos/starred_repos/presentation/paginated_repo_list_view.dart';

@RoutePage()
class StarredReposPage extends StatefulWidget {
  const StarredReposPage({super.key});

  @override
  State<StarredReposPage> createState() => _StarredReposPageState();
}

class _StarredReposPageState extends State<StarredReposPage> {
  @override
  void initState() {
    super.initState();
    // Future.microtask(() {
    //   print('xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx');
    //   BlocProvider.of<StarredReposCubit>(context).getNextStarredReposPage();
    // });
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   BlocProvider.of<StarredReposCubit>(context).getNextStarredReposPage();
    // });
    // if (mounted) {
    //   BlocProvider.of<StarredReposCubit>(context).getNextStarredReposPage();
    // }
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<StarredReposCubit>(context).getNextStarredReposPage();
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        title: const Text('Starred Repos'),
        elevation: 0,
        primary: true,
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        actions: [
          IconButton(
              onPressed: () async {
                await BlocProvider.of<AuthCubit>(context)
                    .signOut()
                    .then((value) {
                  if (context.mounted) {
                    AutoRouter.of(context).pushAndPopUntil(const SignInRoute(),
                        predicate: (_) {
                      return false;
                    });
                  }
                });
              },
              icon: const Icon(Icons.logout_outlined))
        ],
      ),
      body: const SafeArea(child: PaginatedRepoListView()),
    );
  }
}
