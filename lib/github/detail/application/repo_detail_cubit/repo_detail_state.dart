part of 'repo_detail_cubit.dart';

@freezed
class RepoDetailState with _$RepoDetailState {
  const factory RepoDetailState.initial(
      {@Default(false) bool hasStarredStatusChanged}) = Initial;
  const factory RepoDetailState.loading(
      {@Default(false) bool hasStarredStatusChanged}) = Loading;
  const factory RepoDetailState.success(Fresh<GithubRepoDetail?> repoDetail,
      {@Default(false) bool hasStarredStatusChanged}) = Success;
  const factory RepoDetailState.failure(GithubFailure failure,
      {@Default(false) bool hasStarredStatusChanged}) = Failure;
}
