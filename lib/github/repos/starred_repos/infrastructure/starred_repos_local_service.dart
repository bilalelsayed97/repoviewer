import 'package:repoviewr/core/infrastructure/sembast_database.dart';
import 'package:repoviewr/github/core/infrastructure/github_repo_dto.dart';
import 'package:repoviewr/github/core/infrastructure/pagination_config.dart';
import 'package:sembast/sembast.dart';
import 'package:collection/collection.dart';

class StarredReposLocalService {
  final SembastDatabase _sembastDatabase;
  final _store = intMapStoreFactory.store('starredRepos');

  StarredReposLocalService(this._sembastDatabase);

  Future<void> upsertPage(List<GithubRepoDTO> dtos, int page) async {
    final sembastPage = page - 1;
    await _store
        .records(dtos.mapIndexed(
            (index, _) => index + PaginationConfig.itemsPerPage * sembastPage))
        .put(await _sembastDatabase.database,
            dtos.map((e) => e.toJson()).toList());
  }

  Future<List<GithubRepoDTO>> getPage(int page) async {
    final sembastPage = page - 1;
    final records = await _store.find(await _sembastDatabase.database,
        finder: Finder(
          limit: PaginationConfig.itemsPerPage,
          offset: PaginationConfig.itemsPerPage * sembastPage,
        ));
    return records.map((e) => GithubRepoDTO.fromJson(e.value)).toList();
  }

  Future<int> getLocalPageCount() async {
    final repoCount = await _store.count(await _sembastDatabase.database);
    return (repoCount / PaginationConfig.itemsPerPage).ceil();
  }
}
