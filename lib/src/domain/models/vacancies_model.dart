import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'vacancies_model.g.dart';

class VacanciesItem extends Table {

  IntColumn get vacancyId => integer()();
  IntColumn get vacplacementId => integer()();
  IntColumn get profId => integer()();
  TextColumn get profTitle => text()();
  IntColumn get placeId => integer().nullable()();
  TextColumn get placeTitle => text().nullable()();
  TextColumn get salaryVolume => text().nullable()();
  IntColumn get salaryType => integer()();
  IntColumn get directionId => integer()();
  TextColumn get directionTitle => text()();
  IntColumn get staffType => integer()();
  TextColumn get vDescription => text()();
  TextColumn get address => text()();
  RealColumn get latitude => real().nullable()();
  RealColumn get longitude => real().nullable()();
  IntColumn get isActive => integer()();
  TextColumn get salaryVolumeEx => text()();
  IntColumn get clientId => integer()();
  TextColumn get clientName => text()();
  IntColumn get flgHot => integer().nullable()();
  IntColumn get regionId => integer().nullable()();
  TextColumn get searchDesc => text()();
  TextColumn get searchGeo => text()();
  TextColumn get regionName => text().nullable()();
  TextColumn get stationName => text().nullable()();
  IntColumn get baseIndex => integer()();
  IntColumn get flgStemmer => integer()();
  TextColumn get salaryTypeTitle => text()();
  RealColumn get salaryHour => real().nullable()();
  RealColumn get salaryDay => real().nullable()();
  RealColumn get salaryWeek => real().nullable()();
  RealColumn get salaryMonth => real().nullable()();
  TextColumn get webSiteVacancyNum => text()();
  TextColumn get titleWeb => text().nullable()();
}

@DriftDatabase(tables: [VacanciesItem])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
