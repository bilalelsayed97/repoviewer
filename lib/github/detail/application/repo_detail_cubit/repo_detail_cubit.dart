import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repoviewr/core/domain/fresh.dart';
import 'package:repoviewr/github/core/domain/github_failure.dart';
import 'package:repoviewr/github/detail/domain/github_repo_detail.dart';
import 'package:repoviewr/github/detail/infrastructure/repo_detail_repository.dart';

part 'repo_detail_state.dart';
part 'repo_detail_cubit.freezed.dart';

class RepoDetailCubit extends Cubit<RepoDetailState> {
  final RepoDetailRepository _repository;

  RepoDetailCubit(this._repository) : super(const RepoDetailState.initial());

  Future<void> getRepoDetail(String fullRepoName) async {
    emit(const RepoDetailState.loading());

    final response = await _repository.getRepoDetail(fullRepoName);

    response.fold(
      (failure) {
        emit(RepoDetailState.failure(failure));
      },
      (githubRepoDetail) {
        emit(RepoDetailState.success(githubRepoDetail));
      },
    );
  }

  Future<void> switchStarredStatus(GithubRepoDetail repoDetail) async {
    state.maybeMap(
      orElse: () {},
      success: (successState) async {
        final stateCopy = successState.copyWith();
        final repoDetail = successState.repoDetail.entity;

        if (repoDetail != null) {
          emit(
            successState.copyWith.repoDetail(
              entity: repoDetail.copyWith(starred: !repoDetail.starred),
            ),
          );

          final response = await _repository.switchStarredStatus(repoDetail);

          response.fold((failure) {
            emit(RepoDetailState.failure(failure));
          }, (unit) {
            unit == null
                ? emit(stateCopy)
                : emit(state.copyWith(hasStarredStatusChanged: true));
          });
        }
      },
    );
  }
}
