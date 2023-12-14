import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repoviewr/auth/application/auth_cubit/auth_cubit.dart';
import 'package:repoviewr/core/presentation/routes/app_router.gr.dart';
import 'package:repoviewr/github/repos/core/presentation/paginated_repo_list_view.dart';
import 'package:repoviewr/github/repos/searched_repos/application/searched_repos_cubit/searched_repos_cubit.dart';

@RoutePage()
class SearchedReposPage extends StatefulWidget {
  const SearchedReposPage({super.key});

  @override
  State<SearchedReposPage> createState() => _SearchedReposPageState();
}

class _SearchedReposPageState extends State<SearchedReposPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      BlocProvider.of<SearchedReposCubit>(context)
          .getNextSearchedReposPage('Flutter', 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        title: const Text('Starred Repos'),
        actions: [
          IconButton(
              onPressed: () async {
                showDialog(
                    barrierColor: Colors.black.withOpacity(.5),
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Row(
                          children: [
                            Icon(Icons.logout),
                            SizedBox(width: 16),
                            Text('Sign out ...'),
                          ],
                        ),
                        content: const Text('Confirm to sign out.'),
                        elevation: 1,
                        shadowColor: Colors.black,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        actions: [
                          MaterialButton(
                            onPressed: () async {
                              Navigator.pop(context, true);
                            },
                            child: const Text('Confrim',
                                style: TextStyle(color: Colors.red)),
                          ),
                          MaterialButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Back'),
                          ),
                        ],
                      );
                    }).then((value) async {
                  if (value) {
                    await BlocProvider.of<AuthCubit>(context)
                        .signOut()
                        .then((value) {
                      if (context.mounted) {
                        AutoRouter.of(context).pushAndPopUntil(
                            const SignInRoute(), predicate: (_) {
                          return false;
                        });
                      }
                    });
                  }
                });
              },
              icon: const Icon(Icons.logout_outlined))
        ],
      ),
      body: SafeArea(
        child: PaginatedRepoListView(
          isSearch: true,
          getNextPage: (context) {
            BlocProvider.of<SearchedReposCubit>(context)
                .getNextSearchedReposPage('Flutter', 1);
          },
        ),
      ),
    );
  }
}
