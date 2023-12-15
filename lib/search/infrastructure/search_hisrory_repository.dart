import 'package:sembast/sembast.dart';

import 'package:repoviewr/core/infrastructure/sembast_database.dart';

class SearchHisroryRepository {
  final SembastDatabase _sembastDatabase;
  final _store = StoreRef<int, String>('searchHistory');

  SearchHisroryRepository(this._sembastDatabase);

  static const historyLength = 10;

  Stream<List<String>> watchSearchTerms({String? filter}) {
    return _store
        .query(
          finder: filter != null && filter.isNotEmpty
              ? Finder(
                  filter: Filter.custom(
                    (record) => (record.value as String).startsWith(filter),
                  ),
                )
              : null,
        )
        .onSnapshots(_sembastDatabase.database)
        .map((records) => records.reversed.map((e) => e.value).toList());
  }

  Future<void> addSearchTerm(String term) async =>
      await _addSearchTerm(term, _sembastDatabase.database);

  Future<void> deleteSearchTerm(String term) async =>
      await _deleteSearchTerm(term, _sembastDatabase.database);

  Future<void> putSearchTermFirst(String term) async {
    await _sembastDatabase.database.transaction((transaction) async {
      await _deleteSearchTerm(term, transaction);
      await _addSearchTerm(term, transaction);
    });
  }

  Future<void> _addSearchTerm(String term, DatabaseClient dbClient) async {
    final existingKey = await _store.findKey(
      dbClient,
      finder: Finder(
        filter: Filter.custom((record) => record.value == term),
      ),
    );

    if (existingKey != null) {
      await putSearchTermFirst(term);
      return;
    }

    await _store.add(dbClient, term);
    final count = await _store.count(dbClient);
    if (count > historyLength) {
      await _store.delete(
        dbClient,
        finder: Finder(limit: count - historyLength),
      );
    }
  }

  Future<void> _deleteSearchTerm(String term, DatabaseClient dbClient) async {
    await _store.delete(
      dbClient,
      finder: Finder(
        filter: Filter.custom((record) => record.value == term),
      ),
    );
  }
}
