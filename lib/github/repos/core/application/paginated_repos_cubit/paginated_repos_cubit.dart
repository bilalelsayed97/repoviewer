import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repoviewr/core/domain/fresh.dart';
import 'package:repoviewr/github/core/domain/github_failure.dart';
import 'package:repoviewr/github/core/domain/github_repo.dart';
import 'package:repoviewr/github/core/infrastructure/pagination_config.dart';

part 'paginated_repos_state.dart';
part 'paginated_repos_cubit.freezed.dart';

typedef RepositoryGetter
    = Future<Either<GithubFailure, Fresh<List<GithubRepo>>>> Function(int page);

class PaginatedReposCubit extends Cubit<PaginatedReposState> {
  PaginatedReposCubit() : super(PaginatedReposState.initial(Fresh.yes([])));

  int _page = 1;

  int get page {
    return _page;
  }

  Future<void> getNextPage(RepositoryGetter getter) async {
    emit(Loading(state.repos, PaginationConfig.itemsPerPage));
    final response = await getter(_page);
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
