import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class SembastDatabase {
  late Database _instance;
  DatabaseFactory dbFactory = databaseFactoryIo;

  SembastDatabase() {
    init();
  }

  Database get instance => _instance;

  bool _hasBeenInitialised = false;

  Future<void> init() async {
    if (_hasBeenInitialised) return;
    _hasBeenInitialised = true;

    final dbDirectory = await getApplicationDocumentsDirectory();
    dbDirectory.create(recursive: true);
    final dbPath = join(dbDirectory.path, 'sample.db');
    _instance = await dbFactory.openDatabase(dbPath);
  }
}
// class SembastDatabase {
//   late Database _instance;
//   DatabaseFactory dbFactory = databaseFactoryIo;
//   Database get instance => _instance;

//   bool _hasBeenInitialised = false;

//   Future<void> init() async {
//     if (_hasBeenInitialised) return;
//     _hasBeenInitialised = true;

//     final dbDirectory = await getApplicationDocumentsDirectory();
//     dbDirectory.create(recursive: true);
//     final dbPath = join(dbDirectory.path, 'sample.db');
//     _instance = await dbFactory.openDatabase(dbPath);
//   }
// }
