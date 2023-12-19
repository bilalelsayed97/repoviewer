import 'package:repoviewr/github/repos/core/application/paginated_repos_cubit/paginated_repos_cubit.dart';
import 'package:repoviewr/github/repos/starred_repos/infrastructure/starred_repos_repository.dart';

class StarredReposCubit extends PaginatedReposCubit {
  final StarredReposRepository _repository;
  StarredReposCubit(this._repository);

  Future<void> getFirstStarredReposPage() async {
    super.resetState();
    await getNextStarredReposPage();
  }

  getNextStarredReposPage() {
    super.getNextPage((page) => _repository.getStarredReposPage(page));
  }
}
