import 'package:repoviewr/core/infrastructure/sembast_database.dart';
import 'package:repoviewr/github/core/infrastructure/github_headers.dart';
import 'package:sembast/sembast.dart';

class GithubHeadersCache {
  final SembastDatabase _sembastDatabase;
  final _store = stringMapStoreFactory.store('headers');

  GithubHeadersCache(this._sembastDatabase);

  Future<void> saveHeaders(Uri uri, GithubHeaders headers) async {
    await _store.record(uri.toString()).put(
          await _sembastDatabase.database,
          headers.toJson(),
        );
  }

  Future<GithubHeaders?> getHeaders(Uri uri) async {
    final json = await _store
        .record(uri.toString())
        .get(await _sembastDatabase.database);
    return json == null ? null : GithubHeaders.fromJson(json);
  }

  Future<void> deleteHeaders(Uri uri) async {
    await _store.record(uri.toString()).delete(await _sembastDatabase.database);
  }
}
