import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:repoviewr/github/core/domain/github_repo.dart';

@RoutePage()
class RepoDescriptionPage extends StatelessWidget {
  final GithubRepo repo;
  const RepoDescriptionPage({super.key, required this.repo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(repo.fullName),
            Text(repo.description),
            Text(repo.owner.name),
            Text(repo.stargazersCount.toString()),
          ],
        ),
      ),
    );
  }
}
