part of 'paginated_repos_cubit.dart';

@freezed
class PaginatedReposState with _$PaginatedReposState {
  const factory PaginatedReposState.initial(Fresh<List<GithubRepo>> repos) =
      Initial;

  const factory PaginatedReposState.loading(
    Fresh<List<GithubRepo>> repos,
    int itemsPerPage,
  ) = Loading;

  const factory PaginatedReposState.loadSuccess(Fresh<List<GithubRepo>> repos,
      {required bool isNextPageAvailable}) = LoadSuccess;

  const factory PaginatedReposState.loadFailure(
      Fresh<List<GithubRepo>> repos, GithubFailure failure) = LoadFailure;
}
