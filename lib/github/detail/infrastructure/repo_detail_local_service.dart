import 'package:repoviewr/core/infrastructure/sembast_database.dart';
import 'package:repoviewr/github/core/infrastructure/github_headers_cache.dart';
import 'package:repoviewr/github/detail/infrastructure/github_repo_detail_dto.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/timestamp.dart';

class RepoDetailLocalService {
  static const cacheSize = 50;

  SembastDatabase _sembastDatabase;
  final _store = stringMapStoreFactory.store('repoDetails');
  final GithubHeadersCache _headersCache;

  RepoDetailLocalService(this._sembastDatabase, this._headersCache);

  Future<void> upsertRepoDetail(GithubRepoDetailDTO githubRepoDetailDTO) async {
    await _store.record(githubRepoDetailDTO.fullName).put(
          _sembastDatabase.database,
          githubRepoDetailDTO.toSembast(),
        );

    final keys = await _store.findKeys(
      _sembastDatabase.database,
      finder: Finder(sortOrders: [
        SortOrder(GithubRepoDetailDTO.lastUsedFieldName, false)
      ]),
    );

    if (keys.length > cacheSize) {
      final keysToRemove = keys.sublist(cacheSize);
      for (final key in keysToRemove) {
        await _store.record(key).delete(_sembastDatabase.database);
        await _headersCache.deleteHeaders(Uri.https(
          'api.github.com',
          '/repos/$key/readme',
        ));
      }
    }
  }

  Future<GithubRepoDetailDTO?> getRepDetail(String fullRepoName) async {
    final record = _store.record(fullRepoName);

    await record.update(_sembastDatabase.database,
        {GithubRepoDetailDTO.lastUsedFieldName: Timestamp.now()});

    final recordSnapshot = await record.getSnapshot(_sembastDatabase.database);
    if (recordSnapshot == null) {
      return null;
    }
    return GithubRepoDetailDTO.fromSembast(recordSnapshot);
  }
}
