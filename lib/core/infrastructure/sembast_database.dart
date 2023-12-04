import 'dart:io';

import 'package:sembast/sembast.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:sembast/sembast_io.dart';

class SembastDatabase {
  late Database _instance;
  Database get instance => _instance;
  bool _hasBeenInitialised = false;

  Future<void> init() async {
    if (_hasBeenInitialised) return;
    _hasBeenInitialised = true;

    final Directory dbDirectory = await getApplicationDocumentsDirectory();
    dbDirectory.create(recursive: true);
    final dbPath = join(dbDirectory.path, 'db.sembast');
    _instance = await databaseFactoryIo.openDatabase(dbPath);
  }
}
