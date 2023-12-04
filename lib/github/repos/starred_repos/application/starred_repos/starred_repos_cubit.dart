import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repoviewr/core/domain/fresh.dart';
import 'package:repoviewr/github/core/domain/github_failure.dart';
import 'package:repoviewr/github/core/domain/github_repo.dart';
import 'package:repoviewr/github/repos/starred_repos/domain/starred_repos_failure.dart';

part 'starred_repos_state.dart';
part 'starred_repos_cubit.freezed.dart';

class StarredReposCubit extends Cubit<StarredReposState> {
  StarredReposCubit() : super(const StarredReposState.initial());
}
