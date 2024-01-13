// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorAppDataBase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDataBaseBuilder databaseBuilder(String name) =>
      _$AppDataBaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDataBaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDataBaseBuilder(null);
}

class _$AppDataBaseBuilder {
  _$AppDataBaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDataBaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDataBaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDataBase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDataBase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDataBase extends AppDataBase {
  _$AppDataBase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  CharacterDao? _characterDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Character` (`id` TEXT NOT NULL, `name` TEXT NOT NULL, `alternateNames` TEXT NOT NULL, `species` TEXT NOT NULL, `gender` TEXT NOT NULL, `house` TEXT NOT NULL, `dateOfBirth` TEXT NOT NULL, `yearOfBirth` INTEGER NOT NULL, `wizard` INTEGER NOT NULL, `ancestry` TEXT NOT NULL, `eyeColour` TEXT NOT NULL, `hairColour` TEXT NOT NULL, `wand` TEXT, `patronus` TEXT NOT NULL, `hogwartsStudent` INTEGER NOT NULL, `hogwartsStaff` INTEGER NOT NULL, `actor` TEXT NOT NULL, `alternateActors` TEXT NOT NULL, `alive` INTEGER NOT NULL, `image` TEXT NOT NULL, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  CharacterDao get characterDao {
    return _characterDaoInstance ??= _$CharacterDao(database, changeListener);
  }
}

class _$CharacterDao extends CharacterDao {
  _$CharacterDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database, changeListener),
        _characterInsertionAdapter = InsertionAdapter(
            database,
            'Character',
            (Character item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'alternateNames':
                      _stringListConverter.encode(item.alternateNames),
                  'species': item.species,
                  'gender': item.gender,
                  'house': item.house,
                  'dateOfBirth': item.dateOfBirth,
                  'yearOfBirth': item.yearOfBirth,
                  'wizard': item.wizard ? 1 : 0,
                  'ancestry': item.ancestry,
                  'eyeColour': item.eyeColour,
                  'hairColour': item.hairColour,
                  'wand': _wandConverter.encode(item.wand),
                  'patronus': item.patronus,
                  'hogwartsStudent': item.hogwartsStudent ? 1 : 0,
                  'hogwartsStaff': item.hogwartsStaff ? 1 : 0,
                  'actor': item.actor,
                  'alternateActors':
                      _stringListConverter.encode(item.alternateActors),
                  'alive': item.alive ? 1 : 0,
                  'image': item.image
                },
            changeListener),
        _characterUpdateAdapter = UpdateAdapter(
            database,
            'Character',
            ['id'],
            (Character item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'alternateNames':
                      _stringListConverter.encode(item.alternateNames),
                  'species': item.species,
                  'gender': item.gender,
                  'house': item.house,
                  'dateOfBirth': item.dateOfBirth,
                  'yearOfBirth': item.yearOfBirth,
                  'wizard': item.wizard ? 1 : 0,
                  'ancestry': item.ancestry,
                  'eyeColour': item.eyeColour,
                  'hairColour': item.hairColour,
                  'wand': _wandConverter.encode(item.wand),
                  'patronus': item.patronus,
                  'hogwartsStudent': item.hogwartsStudent ? 1 : 0,
                  'hogwartsStaff': item.hogwartsStaff ? 1 : 0,
                  'actor': item.actor,
                  'alternateActors':
                      _stringListConverter.encode(item.alternateActors),
                  'alive': item.alive ? 1 : 0,
                  'image': item.image
                },
            changeListener),
        _characterDeletionAdapter = DeletionAdapter(
            database,
            'Character',
            ['id'],
            (Character item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'alternateNames':
                      _stringListConverter.encode(item.alternateNames),
                  'species': item.species,
                  'gender': item.gender,
                  'house': item.house,
                  'dateOfBirth': item.dateOfBirth,
                  'yearOfBirth': item.yearOfBirth,
                  'wizard': item.wizard ? 1 : 0,
                  'ancestry': item.ancestry,
                  'eyeColour': item.eyeColour,
                  'hairColour': item.hairColour,
                  'wand': _wandConverter.encode(item.wand),
                  'patronus': item.patronus,
                  'hogwartsStudent': item.hogwartsStudent ? 1 : 0,
                  'hogwartsStaff': item.hogwartsStaff ? 1 : 0,
                  'actor': item.actor,
                  'alternateActors':
                      _stringListConverter.encode(item.alternateActors),
                  'alive': item.alive ? 1 : 0,
                  'image': item.image
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Character> _characterInsertionAdapter;

  final UpdateAdapter<Character> _characterUpdateAdapter;

  final DeletionAdapter<Character> _characterDeletionAdapter;

  @override
  Future<List<Character>> findAllCharacters() async {
    return _queryAdapter.queryList('SELECT * FROM Character',
        mapper: (Map<String, Object?> row) => Character(
            id: row['id'] as String,
            name: row['name'] as String,
            alternateNames:
                _stringListConverter.decode(row['alternateNames'] as String),
            species: row['species'] as String,
            gender: row['gender'] as String,
            house: row['house'] as String,
            dateOfBirth: row['dateOfBirth'] as String,
            yearOfBirth: row['yearOfBirth'] as int,
            wizard: (row['wizard'] as int) != 0,
            ancestry: row['ancestry'] as String,
            eyeColour: row['eyeColour'] as String,
            hairColour: row['hairColour'] as String,
            wand: _wandConverter.decode(row['wand'] as String?),
            patronus: row['patronus'] as String,
            hogwartsStudent: (row['hogwartsStudent'] as int) != 0,
            hogwartsStaff: (row['hogwartsStaff'] as int) != 0,
            actor: row['actor'] as String,
            alternateActors:
                _stringListConverter.decode(row['alternateActors'] as String),
            alive: (row['alive'] as int) != 0,
            image: row['image'] as String));
  }

  @override
  Stream<Character?> findCharacterById(String id) {
    return _queryAdapter.queryStream('SELECT * FROM Character WHERE id = ?1',
        mapper: (Map<String, Object?> row) => Character(
            id: row['id'] as String,
            name: row['name'] as String,
            alternateNames:
                _stringListConverter.decode(row['alternateNames'] as String),
            species: row['species'] as String,
            gender: row['gender'] as String,
            house: row['house'] as String,
            dateOfBirth: row['dateOfBirth'] as String,
            yearOfBirth: row['yearOfBirth'] as int,
            wizard: (row['wizard'] as int) != 0,
            ancestry: row['ancestry'] as String,
            eyeColour: row['eyeColour'] as String,
            hairColour: row['hairColour'] as String,
            wand: _wandConverter.decode(row['wand'] as String?),
            patronus: row['patronus'] as String,
            hogwartsStudent: (row['hogwartsStudent'] as int) != 0,
            hogwartsStaff: (row['hogwartsStaff'] as int) != 0,
            actor: row['actor'] as String,
            alternateActors:
                _stringListConverter.decode(row['alternateActors'] as String),
            alive: (row['alive'] as int) != 0,
            image: row['image'] as String),
        arguments: [id],
        queryableName: 'Character',
        isView: false);
  }

  @override
  Future<void> insertCharacter(Character character) async {
    await _characterInsertionAdapter.insert(
        character, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateCharacter(Character character) async {
    await _characterUpdateAdapter.update(character, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteCharacter(Character character) async {
    await _characterDeletionAdapter.delete(character);
  }
}

// ignore_for_file: unused_element
final _stringListConverter = StringListConverter();
final _wandConverter = WandConverter();
