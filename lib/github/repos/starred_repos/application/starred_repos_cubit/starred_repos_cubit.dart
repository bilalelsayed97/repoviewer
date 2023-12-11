import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repoviewr/core/domain/fresh.dart';
import 'package:repoviewr/github/core/domain/github_failure.dart';
import 'package:repoviewr/github/core/domain/github_repo.dart';
import 'package:repoviewr/github/core/infrastructure/pagination_config.dart';
import 'package:repoviewr/github/repos/starred_repos/infrastructure/starred_repos_repository.dart';

part 'starred_repos_state.dart';
part 'starred_repos_cubit.freezed.dart';

class StarredReposCubit extends Cubit<StarredReposState> {
  final StarredReposRepository _repository;
  StarredReposCubit(this._repository)
      : super(StarredReposState.initial(Fresh.yes([])));

  int _page = 1;

  Future getNextStarredReposPage() async {
    emit(Loading(state.repos, PaginationConfig.itemsPerPage));
    final response = await _repository.getStarredReposPage(_page);
    response.fold((failure) {
      emit(LoadFailure(state.repos, failure));
    }, (repos) {
      _page++;
      emit(LoadSuccess(
          repos.copyWith(entity: [...state.repos.entity, ...repos.entity]),
          isNextPageAvailable: repos.isNextPageAvailable ?? false));
    });
  }
}
