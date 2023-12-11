import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class SembastDatabase {
  SembastDatabase._();
  bool _hasBeenInitialised = false;
  DatabaseFactory dbFactory = databaseFactoryIo;

  static final SembastDatabase _singleton = SembastDatabase._();

  static SembastDatabase get instance => _singleton;

  late Database _database;

  Future<Database> get database async => _database;

  Future<void> initialize() async {
    if (_hasBeenInitialised) return;
    _hasBeenInitialised = true;
    final dbDirectory = await getApplicationDocumentsDirectory();
    dbDirectory.create(recursive: true);
    final dbPath = join(dbDirectory.path, 'sembast.db');
    _database = await databaseFactoryIo.openDatabase(dbPath);
  }
}
