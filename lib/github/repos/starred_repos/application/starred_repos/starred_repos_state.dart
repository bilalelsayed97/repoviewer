part of 'starred_repos_cubit.dart';

@freezed
class StarredReposState with _$StarredReposState {
  const factory StarredReposState.initial(Fresh<List<GithubRepo>> repos) =
      Initial;
  const factory StarredReposState.loading(Fresh<List<GithubRepo>> repos) =
      Loading;
  const factory StarredReposState.loadSuccess(Fresh<List<GithubRepo>> repos,
      {required bool isNextPageAvailable}) = LoadSuccess;
  const factory StarredReposState.loadFailure(
      Fresh<List<GithubRepo>> repos, GithubFailure failure) = LoadFailure;
}
