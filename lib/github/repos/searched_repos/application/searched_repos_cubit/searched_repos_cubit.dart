import 'package:repoviewr/github/repos/core/application/paginated_repos_cubit/paginated_repos_cubit.dart';
import 'package:repoviewr/github/repos/searched_repos/infrastructure/searched_repos_repository.dart';

class SearchedReposCubit extends PaginatedReposCubit {
  final SearchedReposRepository _repository;
  SearchedReposCubit(this._repository);

  Future getNextSearchedReposPage(String query, int page,
      {required bool isNewSearch}) async {
    super.getNextPage((page) => _repository.getSearchedReposPage(query, page),
        isNewSearch: isNewSearch);
  }
}
