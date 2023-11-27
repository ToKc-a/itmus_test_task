// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vacancies_model.dart';

// ignore_for_file: type=lint
class $VacanciesItemTable extends VacanciesItem
    with TableInfo<$VacanciesItemTable, VacanciesItemData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $VacanciesItemTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _vacancyIdMeta =
      const VerificationMeta('vacancyId');
  @override
  late final GeneratedColumn<int> vacancyId = GeneratedColumn<int>(
      'vacancy_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _vacplacementIdMeta =
      const VerificationMeta('vacplacementId');
  @override
  late final GeneratedColumn<int> vacplacementId = GeneratedColumn<int>(
      'vacplacement_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _profIdMeta = const VerificationMeta('profId');
  @override
  late final GeneratedColumn<int> profId = GeneratedColumn<int>(
      'prof_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _profTitleMeta =
      const VerificationMeta('profTitle');
  @override
  late final GeneratedColumn<String> profTitle = GeneratedColumn<String>(
      'prof_title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _placeIdMeta =
      const VerificationMeta('placeId');
  @override
  late final GeneratedColumn<int> placeId = GeneratedColumn<int>(
      'place_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _placeTitleMeta =
      const VerificationMeta('placeTitle');
  @override
  late final GeneratedColumn<String> placeTitle = GeneratedColumn<String>(
      'place_title', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _salaryVolumeMeta =
      const VerificationMeta('salaryVolume');
  @override
  late final GeneratedColumn<String> salaryVolume = GeneratedColumn<String>(
      'salary_volume', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _salaryTypeMeta =
      const VerificationMeta('salaryType');
  @override
  late final GeneratedColumn<int> salaryType = GeneratedColumn<int>(
      'salary_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _directionIdMeta =
      const VerificationMeta('directionId');
  @override
  late final GeneratedColumn<int> directionId = GeneratedColumn<int>(
      'direction_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _directionTitleMeta =
      const VerificationMeta('directionTitle');
  @override
  late final GeneratedColumn<String> directionTitle = GeneratedColumn<String>(
      'direction_title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _staffTypeMeta =
      const VerificationMeta('staffType');
  @override
  late final GeneratedColumn<int> staffType = GeneratedColumn<int>(
      'staff_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _vDescriptionMeta =
      const VerificationMeta('vDescription');
  @override
  late final GeneratedColumn<String> vDescription = GeneratedColumn<String>(
      'v_description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _latitudeMeta =
      const VerificationMeta('latitude');
  @override
  late final GeneratedColumn<double> latitude = GeneratedColumn<double>(
      'latitude', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _longitudeMeta =
      const VerificationMeta('longitude');
  @override
  late final GeneratedColumn<double> longitude = GeneratedColumn<double>(
      'longitude', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<int> isActive = GeneratedColumn<int>(
      'is_active', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _salaryVolumeExMeta =
      const VerificationMeta('salaryVolumeEx');
  @override
  late final GeneratedColumn<String> salaryVolumeEx = GeneratedColumn<String>(
      'salary_volume_ex', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _clientIdMeta =
      const VerificationMeta('clientId');
  @override
  late final GeneratedColumn<int> clientId = GeneratedColumn<int>(
      'client_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _clientNameMeta =
      const VerificationMeta('clientName');
  @override
  late final GeneratedColumn<String> clientName = GeneratedColumn<String>(
      'client_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _flgHotMeta = const VerificationMeta('flgHot');
  @override
  late final GeneratedColumn<int> flgHot = GeneratedColumn<int>(
      'flg_hot', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _regionIdMeta =
      const VerificationMeta('regionId');
  @override
  late final GeneratedColumn<int> regionId = GeneratedColumn<int>(
      'region_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _searchDescMeta =
      const VerificationMeta('searchDesc');
  @override
  late final GeneratedColumn<String> searchDesc = GeneratedColumn<String>(
      'search_desc', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _searchGeoMeta =
      const VerificationMeta('searchGeo');
  @override
  late final GeneratedColumn<String> searchGeo = GeneratedColumn<String>(
      'search_geo', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _regionNameMeta =
      const VerificationMeta('regionName');
  @override
  late final GeneratedColumn<String> regionName = GeneratedColumn<String>(
      'region_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _stationNameMeta =
      const VerificationMeta('stationName');
  @override
  late final GeneratedColumn<String> stationName = GeneratedColumn<String>(
      'station_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _baseIndexMeta =
      const VerificationMeta('baseIndex');
  @override
  late final GeneratedColumn<int> baseIndex = GeneratedColumn<int>(
      'base_index', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _flgStemmerMeta =
      const VerificationMeta('flgStemmer');
  @override
  late final GeneratedColumn<int> flgStemmer = GeneratedColumn<int>(
      'flg_stemmer', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _salaryTypeTitleMeta =
      const VerificationMeta('salaryTypeTitle');
  @override
  late final GeneratedColumn<String> salaryTypeTitle = GeneratedColumn<String>(
      'salary_type_title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _salaryHourMeta =
      const VerificationMeta('salaryHour');
  @override
  late final GeneratedColumn<double> salaryHour = GeneratedColumn<double>(
      'salary_hour', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _salaryDayMeta =
      const VerificationMeta('salaryDay');
  @override
  late final GeneratedColumn<double> salaryDay = GeneratedColumn<double>(
      'salary_day', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _salaryWeekMeta =
      const VerificationMeta('salaryWeek');
  @override
  late final GeneratedColumn<double> salaryWeek = GeneratedColumn<double>(
      'salary_week', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _salaryMonthMeta =
      const VerificationMeta('salaryMonth');
  @override
  late final GeneratedColumn<double> salaryMonth = GeneratedColumn<double>(
      'salary_month', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _webSiteVacancyNumMeta =
      const VerificationMeta('webSiteVacancyNum');
  @override
  late final GeneratedColumn<String> webSiteVacancyNum =
      GeneratedColumn<String>('web_site_vacancy_num', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleWebMeta =
      const VerificationMeta('titleWeb');
  @override
  late final GeneratedColumn<String> titleWeb = GeneratedColumn<String>(
      'title_web', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        vacancyId,
        vacplacementId,
        profId,
        profTitle,
        placeId,
        placeTitle,
        salaryVolume,
        salaryType,
        directionId,
        directionTitle,
        staffType,
        vDescription,
        address,
        latitude,
        longitude,
        isActive,
        salaryVolumeEx,
        clientId,
        clientName,
        flgHot,
        regionId,
        searchDesc,
        searchGeo,
        regionName,
        stationName,
        baseIndex,
        flgStemmer,
        salaryTypeTitle,
        salaryHour,
        salaryDay,
        salaryWeek,
        salaryMonth,
        webSiteVacancyNum,
        titleWeb
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'vacancies_item';
  @override
  VerificationContext validateIntegrity(Insertable<VacanciesItemData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('vacancy_id')) {
      context.handle(_vacancyIdMeta,
          vacancyId.isAcceptableOrUnknown(data['vacancy_id']!, _vacancyIdMeta));
    } else if (isInserting) {
      context.missing(_vacancyIdMeta);
    }
    if (data.containsKey('vacplacement_id')) {
      context.handle(
          _vacplacementIdMeta,
          vacplacementId.isAcceptableOrUnknown(
              data['vacplacement_id']!, _vacplacementIdMeta));
    } else if (isInserting) {
      context.missing(_vacplacementIdMeta);
    }
    if (data.containsKey('prof_id')) {
      context.handle(_profIdMeta,
          profId.isAcceptableOrUnknown(data['prof_id']!, _profIdMeta));
    } else if (isInserting) {
      context.missing(_profIdMeta);
    }
    if (data.containsKey('prof_title')) {
      context.handle(_profTitleMeta,
          profTitle.isAcceptableOrUnknown(data['prof_title']!, _profTitleMeta));
    } else if (isInserting) {
      context.missing(_profTitleMeta);
    }
    if (data.containsKey('place_id')) {
      context.handle(_placeIdMeta,
          placeId.isAcceptableOrUnknown(data['place_id']!, _placeIdMeta));
    }
    if (data.containsKey('place_title')) {
      context.handle(
          _placeTitleMeta,
          placeTitle.isAcceptableOrUnknown(
              data['place_title']!, _placeTitleMeta));
    }
    if (data.containsKey('salary_volume')) {
      context.handle(
          _salaryVolumeMeta,
          salaryVolume.isAcceptableOrUnknown(
              data['salary_volume']!, _salaryVolumeMeta));
    }
    if (data.containsKey('salary_type')) {
      context.handle(
          _salaryTypeMeta,
          salaryType.isAcceptableOrUnknown(
              data['salary_type']!, _salaryTypeMeta));
    } else if (isInserting) {
      context.missing(_salaryTypeMeta);
    }
    if (data.containsKey('direction_id')) {
      context.handle(
          _directionIdMeta,
          directionId.isAcceptableOrUnknown(
              data['direction_id']!, _directionIdMeta));
    } else if (isInserting) {
      context.missing(_directionIdMeta);
    }
    if (data.containsKey('direction_title')) {
      context.handle(
          _directionTitleMeta,
          directionTitle.isAcceptableOrUnknown(
              data['direction_title']!, _directionTitleMeta));
    } else if (isInserting) {
      context.missing(_directionTitleMeta);
    }
    if (data.containsKey('staff_type')) {
      context.handle(_staffTypeMeta,
          staffType.isAcceptableOrUnknown(data['staff_type']!, _staffTypeMeta));
    } else if (isInserting) {
      context.missing(_staffTypeMeta);
    }
    if (data.containsKey('v_description')) {
      context.handle(
          _vDescriptionMeta,
          vDescription.isAcceptableOrUnknown(
              data['v_description']!, _vDescriptionMeta));
    } else if (isInserting) {
      context.missing(_vDescriptionMeta);
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('latitude')) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta));
    }
    if (data.containsKey('longitude')) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta));
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    } else if (isInserting) {
      context.missing(_isActiveMeta);
    }
    if (data.containsKey('salary_volume_ex')) {
      context.handle(
          _salaryVolumeExMeta,
          salaryVolumeEx.isAcceptableOrUnknown(
              data['salary_volume_ex']!, _salaryVolumeExMeta));
    } else if (isInserting) {
      context.missing(_salaryVolumeExMeta);
    }
    if (data.containsKey('client_id')) {
      context.handle(_clientIdMeta,
          clientId.isAcceptableOrUnknown(data['client_id']!, _clientIdMeta));
    } else if (isInserting) {
      context.missing(_clientIdMeta);
    }
    if (data.containsKey('client_name')) {
      context.handle(
          _clientNameMeta,
          clientName.isAcceptableOrUnknown(
              data['client_name']!, _clientNameMeta));
    } else if (isInserting) {
      context.missing(_clientNameMeta);
    }
    if (data.containsKey('flg_hot')) {
      context.handle(_flgHotMeta,
          flgHot.isAcceptableOrUnknown(data['flg_hot']!, _flgHotMeta));
    }
    if (data.containsKey('region_id')) {
      context.handle(_regionIdMeta,
          regionId.isAcceptableOrUnknown(data['region_id']!, _regionIdMeta));
    }
    if (data.containsKey('search_desc')) {
      context.handle(
          _searchDescMeta,
          searchDesc.isAcceptableOrUnknown(
              data['search_desc']!, _searchDescMeta));
    } else if (isInserting) {
      context.missing(_searchDescMeta);
    }
    if (data.containsKey('search_geo')) {
      context.handle(_searchGeoMeta,
          searchGeo.isAcceptableOrUnknown(data['search_geo']!, _searchGeoMeta));
    } else if (isInserting) {
      context.missing(_searchGeoMeta);
    }
    if (data.containsKey('region_name')) {
      context.handle(
          _regionNameMeta,
          regionName.isAcceptableOrUnknown(
              data['region_name']!, _regionNameMeta));
    }
    if (data.containsKey('station_name')) {
      context.handle(
          _stationNameMeta,
          stationName.isAcceptableOrUnknown(
              data['station_name']!, _stationNameMeta));
    }
    if (data.containsKey('base_index')) {
      context.handle(_baseIndexMeta,
          baseIndex.isAcceptableOrUnknown(data['base_index']!, _baseIndexMeta));
    } else if (isInserting) {
      context.missing(_baseIndexMeta);
    }
    if (data.containsKey('flg_stemmer')) {
      context.handle(
          _flgStemmerMeta,
          flgStemmer.isAcceptableOrUnknown(
              data['flg_stemmer']!, _flgStemmerMeta));
    } else if (isInserting) {
      context.missing(_flgStemmerMeta);
    }
    if (data.containsKey('salary_type_title')) {
      context.handle(
          _salaryTypeTitleMeta,
          salaryTypeTitle.isAcceptableOrUnknown(
              data['salary_type_title']!, _salaryTypeTitleMeta));
    } else if (isInserting) {
      context.missing(_salaryTypeTitleMeta);
    }
    if (data.containsKey('salary_hour')) {
      context.handle(
          _salaryHourMeta,
          salaryHour.isAcceptableOrUnknown(
              data['salary_hour']!, _salaryHourMeta));
    }
    if (data.containsKey('salary_day')) {
      context.handle(_salaryDayMeta,
          salaryDay.isAcceptableOrUnknown(data['salary_day']!, _salaryDayMeta));
    }
    if (data.containsKey('salary_week')) {
      context.handle(
          _salaryWeekMeta,
          salaryWeek.isAcceptableOrUnknown(
              data['salary_week']!, _salaryWeekMeta));
    }
    if (data.containsKey('salary_month')) {
      context.handle(
          _salaryMonthMeta,
          salaryMonth.isAcceptableOrUnknown(
              data['salary_month']!, _salaryMonthMeta));
    }
    if (data.containsKey('web_site_vacancy_num')) {
      context.handle(
          _webSiteVacancyNumMeta,
          webSiteVacancyNum.isAcceptableOrUnknown(
              data['web_site_vacancy_num']!, _webSiteVacancyNumMeta));
    } else if (isInserting) {
      context.missing(_webSiteVacancyNumMeta);
    }
    if (data.containsKey('title_web')) {
      context.handle(_titleWebMeta,
          titleWeb.isAcceptableOrUnknown(data['title_web']!, _titleWebMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  VacanciesItemData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return VacanciesItemData(
      vacancyId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}vacancy_id'])!,
      vacplacementId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}vacplacement_id'])!,
      profId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}prof_id'])!,
      profTitle: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}prof_title'])!,
      placeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}place_id']),
      placeTitle: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}place_title']),
      salaryVolume: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}salary_volume']),
      salaryType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}salary_type'])!,
      directionId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}direction_id'])!,
      directionTitle: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}direction_title'])!,
      staffType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}staff_type'])!,
      vDescription: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}v_description'])!,
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address'])!,
      latitude: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}latitude']),
      longitude: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}longitude']),
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}is_active'])!,
      salaryVolumeEx: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}salary_volume_ex'])!,
      clientId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}client_id'])!,
      clientName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}client_name'])!,
      flgHot: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}flg_hot']),
      regionId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}region_id']),
      searchDesc: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}search_desc'])!,
      searchGeo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}search_geo'])!,
      regionName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}region_name']),
      stationName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}station_name']),
      baseIndex: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}base_index'])!,
      flgStemmer: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}flg_stemmer'])!,
      salaryTypeTitle: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}salary_type_title'])!,
      salaryHour: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}salary_hour']),
      salaryDay: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}salary_day']),
      salaryWeek: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}salary_week']),
      salaryMonth: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}salary_month']),
      webSiteVacancyNum: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}web_site_vacancy_num'])!,
      titleWeb: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_web']),
    );
  }

  @override
  $VacanciesItemTable createAlias(String alias) {
    return $VacanciesItemTable(attachedDatabase, alias);
  }
}

class VacanciesItemData extends DataClass
    implements Insertable<VacanciesItemData> {
  final int vacancyId;
  final int vacplacementId;
  final int profId;
  final String profTitle;
  final int? placeId;
  final String? placeTitle;
  final String? salaryVolume;
  final int salaryType;
  final int directionId;
  final String directionTitle;
  final int staffType;
  final String vDescription;
  final String address;
  final double? latitude;
  final double? longitude;
  final int isActive;
  final String salaryVolumeEx;
  final int clientId;
  final String clientName;
  final int? flgHot;
  final int? regionId;
  final String searchDesc;
  final String searchGeo;
  final String? regionName;
  final String? stationName;
  final int baseIndex;
  final int flgStemmer;
  final String salaryTypeTitle;
  final double? salaryHour;
  final double? salaryDay;
  final double? salaryWeek;
  final double? salaryMonth;
  final String webSiteVacancyNum;
  final String? titleWeb;
  const VacanciesItemData(
      {required this.vacancyId,
      required this.vacplacementId,
      required this.profId,
      required this.profTitle,
      this.placeId,
      this.placeTitle,
      this.salaryVolume,
      required this.salaryType,
      required this.directionId,
      required this.directionTitle,
      required this.staffType,
      required this.vDescription,
      required this.address,
      this.latitude,
      this.longitude,
      required this.isActive,
      required this.salaryVolumeEx,
      required this.clientId,
      required this.clientName,
      this.flgHot,
      this.regionId,
      required this.searchDesc,
      required this.searchGeo,
      this.regionName,
      this.stationName,
      required this.baseIndex,
      required this.flgStemmer,
      required this.salaryTypeTitle,
      this.salaryHour,
      this.salaryDay,
      this.salaryWeek,
      this.salaryMonth,
      required this.webSiteVacancyNum,
      this.titleWeb});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['vacancy_id'] = Variable<int>(vacancyId);
    map['vacplacement_id'] = Variable<int>(vacplacementId);
    map['prof_id'] = Variable<int>(profId);
    map['prof_title'] = Variable<String>(profTitle);
    if (!nullToAbsent || placeId != null) {
      map['place_id'] = Variable<int>(placeId);
    }
    if (!nullToAbsent || placeTitle != null) {
      map['place_title'] = Variable<String>(placeTitle);
    }
    if (!nullToAbsent || salaryVolume != null) {
      map['salary_volume'] = Variable<String>(salaryVolume);
    }
    map['salary_type'] = Variable<int>(salaryType);
    map['direction_id'] = Variable<int>(directionId);
    map['direction_title'] = Variable<String>(directionTitle);
    map['staff_type'] = Variable<int>(staffType);
    map['v_description'] = Variable<String>(vDescription);
    map['address'] = Variable<String>(address);
    if (!nullToAbsent || latitude != null) {
      map['latitude'] = Variable<double>(latitude);
    }
    if (!nullToAbsent || longitude != null) {
      map['longitude'] = Variable<double>(longitude);
    }
    map['is_active'] = Variable<int>(isActive);
    map['salary_volume_ex'] = Variable<String>(salaryVolumeEx);
    map['client_id'] = Variable<int>(clientId);
    map['client_name'] = Variable<String>(clientName);
    if (!nullToAbsent || flgHot != null) {
      map['flg_hot'] = Variable<int>(flgHot);
    }
    if (!nullToAbsent || regionId != null) {
      map['region_id'] = Variable<int>(regionId);
    }
    map['search_desc'] = Variable<String>(searchDesc);
    map['search_geo'] = Variable<String>(searchGeo);
    if (!nullToAbsent || regionName != null) {
      map['region_name'] = Variable<String>(regionName);
    }
    if (!nullToAbsent || stationName != null) {
      map['station_name'] = Variable<String>(stationName);
    }
    map['base_index'] = Variable<int>(baseIndex);
    map['flg_stemmer'] = Variable<int>(flgStemmer);
    map['salary_type_title'] = Variable<String>(salaryTypeTitle);
    if (!nullToAbsent || salaryHour != null) {
      map['salary_hour'] = Variable<double>(salaryHour);
    }
    if (!nullToAbsent || salaryDay != null) {
      map['salary_day'] = Variable<double>(salaryDay);
    }
    if (!nullToAbsent || salaryWeek != null) {
      map['salary_week'] = Variable<double>(salaryWeek);
    }
    if (!nullToAbsent || salaryMonth != null) {
      map['salary_month'] = Variable<double>(salaryMonth);
    }
    map['web_site_vacancy_num'] = Variable<String>(webSiteVacancyNum);
    if (!nullToAbsent || titleWeb != null) {
      map['title_web'] = Variable<String>(titleWeb);
    }
    return map;
  }

  VacanciesItemCompanion toCompanion(bool nullToAbsent) {
    return VacanciesItemCompanion(
      vacancyId: Value(vacancyId),
      vacplacementId: Value(vacplacementId),
      profId: Value(profId),
      profTitle: Value(profTitle),
      placeId: placeId == null && nullToAbsent
          ? const Value.absent()
          : Value(placeId),
      placeTitle: placeTitle == null && nullToAbsent
          ? const Value.absent()
          : Value(placeTitle),
      salaryVolume: salaryVolume == null && nullToAbsent
          ? const Value.absent()
          : Value(salaryVolume),
      salaryType: Value(salaryType),
      directionId: Value(directionId),
      directionTitle: Value(directionTitle),
      staffType: Value(staffType),
      vDescription: Value(vDescription),
      address: Value(address),
      latitude: latitude == null && nullToAbsent
          ? const Value.absent()
          : Value(latitude),
      longitude: longitude == null && nullToAbsent
          ? const Value.absent()
          : Value(longitude),
      isActive: Value(isActive),
      salaryVolumeEx: Value(salaryVolumeEx),
      clientId: Value(clientId),
      clientName: Value(clientName),
      flgHot:
          flgHot == null && nullToAbsent ? const Value.absent() : Value(flgHot),
      regionId: regionId == null && nullToAbsent
          ? const Value.absent()
          : Value(regionId),
      searchDesc: Value(searchDesc),
      searchGeo: Value(searchGeo),
      regionName: regionName == null && nullToAbsent
          ? const Value.absent()
          : Value(regionName),
      stationName: stationName == null && nullToAbsent
          ? const Value.absent()
          : Value(stationName),
      baseIndex: Value(baseIndex),
      flgStemmer: Value(flgStemmer),
      salaryTypeTitle: Value(salaryTypeTitle),
      salaryHour: salaryHour == null && nullToAbsent
          ? const Value.absent()
          : Value(salaryHour),
      salaryDay: salaryDay == null && nullToAbsent
          ? const Value.absent()
          : Value(salaryDay),
      salaryWeek: salaryWeek == null && nullToAbsent
          ? const Value.absent()
          : Value(salaryWeek),
      salaryMonth: salaryMonth == null && nullToAbsent
          ? const Value.absent()
          : Value(salaryMonth),
      webSiteVacancyNum: Value(webSiteVacancyNum),
      titleWeb: titleWeb == null && nullToAbsent
          ? const Value.absent()
          : Value(titleWeb),
    );
  }

  factory VacanciesItemData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return VacanciesItemData(
      vacancyId: serializer.fromJson<int>(json['vacancyId']),
      vacplacementId: serializer.fromJson<int>(json['vacplacementId']),
      profId: serializer.fromJson<int>(json['profId']),
      profTitle: serializer.fromJson<String>(json['profTitle']),
      placeId: serializer.fromJson<int?>(json['placeId']),
      placeTitle: serializer.fromJson<String?>(json['placeTitle']),
      salaryVolume: serializer.fromJson<String?>(json['salaryVolume']),
      salaryType: serializer.fromJson<int>(json['salaryType']),
      directionId: serializer.fromJson<int>(json['directionId']),
      directionTitle: serializer.fromJson<String>(json['directionTitle']),
      staffType: serializer.fromJson<int>(json['staffType']),
      vDescription: serializer.fromJson<String>(json['vDescription']),
      address: serializer.fromJson<String>(json['address']),
      latitude: serializer.fromJson<double?>(json['latitude']),
      longitude: serializer.fromJson<double?>(json['longitude']),
      isActive: serializer.fromJson<int>(json['isActive']),
      salaryVolumeEx: serializer.fromJson<String>(json['salaryVolumeEx']),
      clientId: serializer.fromJson<int>(json['clientId']),
      clientName: serializer.fromJson<String>(json['clientName']),
      flgHot: serializer.fromJson<int?>(json['flgHot']),
      regionId: serializer.fromJson<int?>(json['regionId']),
      searchDesc: serializer.fromJson<String>(json['searchDesc']),
      searchGeo: serializer.fromJson<String>(json['searchGeo']),
      regionName: serializer.fromJson<String?>(json['regionName']),
      stationName: serializer.fromJson<String?>(json['stationName']),
      baseIndex: serializer.fromJson<int>(json['baseIndex']),
      flgStemmer: serializer.fromJson<int>(json['flgStemmer']),
      salaryTypeTitle: serializer.fromJson<String>(json['salaryTypeTitle']),
      salaryHour: serializer.fromJson<double?>(json['salaryHour']),
      salaryDay: serializer.fromJson<double?>(json['salaryDay']),
      salaryWeek: serializer.fromJson<double?>(json['salaryWeek']),
      salaryMonth: serializer.fromJson<double?>(json['salaryMonth']),
      webSiteVacancyNum: serializer.fromJson<String>(json['webSiteVacancyNum']),
      titleWeb: serializer.fromJson<String?>(json['titleWeb']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'vacancyId': serializer.toJson<int>(vacancyId),
      'vacplacementId': serializer.toJson<int>(vacplacementId),
      'profId': serializer.toJson<int>(profId),
      'profTitle': serializer.toJson<String>(profTitle),
      'placeId': serializer.toJson<int?>(placeId),
      'placeTitle': serializer.toJson<String?>(placeTitle),
      'salaryVolume': serializer.toJson<String?>(salaryVolume),
      'salaryType': serializer.toJson<int>(salaryType),
      'directionId': serializer.toJson<int>(directionId),
      'directionTitle': serializer.toJson<String>(directionTitle),
      'staffType': serializer.toJson<int>(staffType),
      'vDescription': serializer.toJson<String>(vDescription),
      'address': serializer.toJson<String>(address),
      'latitude': serializer.toJson<double?>(latitude),
      'longitude': serializer.toJson<double?>(longitude),
      'isActive': serializer.toJson<int>(isActive),
      'salaryVolumeEx': serializer.toJson<String>(salaryVolumeEx),
      'clientId': serializer.toJson<int>(clientId),
      'clientName': serializer.toJson<String>(clientName),
      'flgHot': serializer.toJson<int?>(flgHot),
      'regionId': serializer.toJson<int?>(regionId),
      'searchDesc': serializer.toJson<String>(searchDesc),
      'searchGeo': serializer.toJson<String>(searchGeo),
      'regionName': serializer.toJson<String?>(regionName),
      'stationName': serializer.toJson<String?>(stationName),
      'baseIndex': serializer.toJson<int>(baseIndex),
      'flgStemmer': serializer.toJson<int>(flgStemmer),
      'salaryTypeTitle': serializer.toJson<String>(salaryTypeTitle),
      'salaryHour': serializer.toJson<double?>(salaryHour),
      'salaryDay': serializer.toJson<double?>(salaryDay),
      'salaryWeek': serializer.toJson<double?>(salaryWeek),
      'salaryMonth': serializer.toJson<double?>(salaryMonth),
      'webSiteVacancyNum': serializer.toJson<String>(webSiteVacancyNum),
      'titleWeb': serializer.toJson<String?>(titleWeb),
    };
  }

  VacanciesItemData copyWith(
          {int? vacancyId,
          int? vacplacementId,
          int? profId,
          String? profTitle,
          Value<int?> placeId = const Value.absent(),
          Value<String?> placeTitle = const Value.absent(),
          Value<String?> salaryVolume = const Value.absent(),
          int? salaryType,
          int? directionId,
          String? directionTitle,
          int? staffType,
          String? vDescription,
          String? address,
          Value<double?> latitude = const Value.absent(),
          Value<double?> longitude = const Value.absent(),
          int? isActive,
          String? salaryVolumeEx,
          int? clientId,
          String? clientName,
          Value<int?> flgHot = const Value.absent(),
          Value<int?> regionId = const Value.absent(),
          String? searchDesc,
          String? searchGeo,
          Value<String?> regionName = const Value.absent(),
          Value<String?> stationName = const Value.absent(),
          int? baseIndex,
          int? flgStemmer,
          String? salaryTypeTitle,
          Value<double?> salaryHour = const Value.absent(),
          Value<double?> salaryDay = const Value.absent(),
          Value<double?> salaryWeek = const Value.absent(),
          Value<double?> salaryMonth = const Value.absent(),
          String? webSiteVacancyNum,
          Value<String?> titleWeb = const Value.absent()}) =>
      VacanciesItemData(
        vacancyId: vacancyId ?? this.vacancyId,
        vacplacementId: vacplacementId ?? this.vacplacementId,
        profId: profId ?? this.profId,
        profTitle: profTitle ?? this.profTitle,
        placeId: placeId.present ? placeId.value : this.placeId,
        placeTitle: placeTitle.present ? placeTitle.value : this.placeTitle,
        salaryVolume:
            salaryVolume.present ? salaryVolume.value : this.salaryVolume,
        salaryType: salaryType ?? this.salaryType,
        directionId: directionId ?? this.directionId,
        directionTitle: directionTitle ?? this.directionTitle,
        staffType: staffType ?? this.staffType,
        vDescription: vDescription ?? this.vDescription,
        address: address ?? this.address,
        latitude: latitude.present ? latitude.value : this.latitude,
        longitude: longitude.present ? longitude.value : this.longitude,
        isActive: isActive ?? this.isActive,
        salaryVolumeEx: salaryVolumeEx ?? this.salaryVolumeEx,
        clientId: clientId ?? this.clientId,
        clientName: clientName ?? this.clientName,
        flgHot: flgHot.present ? flgHot.value : this.flgHot,
        regionId: regionId.present ? regionId.value : this.regionId,
        searchDesc: searchDesc ?? this.searchDesc,
        searchGeo: searchGeo ?? this.searchGeo,
        regionName: regionName.present ? regionName.value : this.regionName,
        stationName: stationName.present ? stationName.value : this.stationName,
        baseIndex: baseIndex ?? this.baseIndex,
        flgStemmer: flgStemmer ?? this.flgStemmer,
        salaryTypeTitle: salaryTypeTitle ?? this.salaryTypeTitle,
        salaryHour: salaryHour.present ? salaryHour.value : this.salaryHour,
        salaryDay: salaryDay.present ? salaryDay.value : this.salaryDay,
        salaryWeek: salaryWeek.present ? salaryWeek.value : this.salaryWeek,
        salaryMonth: salaryMonth.present ? salaryMonth.value : this.salaryMonth,
        webSiteVacancyNum: webSiteVacancyNum ?? this.webSiteVacancyNum,
        titleWeb: titleWeb.present ? titleWeb.value : this.titleWeb,
      );
  @override
  String toString() {
    return (StringBuffer('VacanciesItemData(')
          ..write('vacancyId: $vacancyId, ')
          ..write('vacplacementId: $vacplacementId, ')
          ..write('profId: $profId, ')
          ..write('profTitle: $profTitle, ')
          ..write('placeId: $placeId, ')
          ..write('placeTitle: $placeTitle, ')
          ..write('salaryVolume: $salaryVolume, ')
          ..write('salaryType: $salaryType, ')
          ..write('directionId: $directionId, ')
          ..write('directionTitle: $directionTitle, ')
          ..write('staffType: $staffType, ')
          ..write('vDescription: $vDescription, ')
          ..write('address: $address, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('isActive: $isActive, ')
          ..write('salaryVolumeEx: $salaryVolumeEx, ')
          ..write('clientId: $clientId, ')
          ..write('clientName: $clientName, ')
          ..write('flgHot: $flgHot, ')
          ..write('regionId: $regionId, ')
          ..write('searchDesc: $searchDesc, ')
          ..write('searchGeo: $searchGeo, ')
          ..write('regionName: $regionName, ')
          ..write('stationName: $stationName, ')
          ..write('baseIndex: $baseIndex, ')
          ..write('flgStemmer: $flgStemmer, ')
          ..write('salaryTypeTitle: $salaryTypeTitle, ')
          ..write('salaryHour: $salaryHour, ')
          ..write('salaryDay: $salaryDay, ')
          ..write('salaryWeek: $salaryWeek, ')
          ..write('salaryMonth: $salaryMonth, ')
          ..write('webSiteVacancyNum: $webSiteVacancyNum, ')
          ..write('titleWeb: $titleWeb')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        vacancyId,
        vacplacementId,
        profId,
        profTitle,
        placeId,
        placeTitle,
        salaryVolume,
        salaryType,
        directionId,
        directionTitle,
        staffType,
        vDescription,
        address,
        latitude,
        longitude,
        isActive,
        salaryVolumeEx,
        clientId,
        clientName,
        flgHot,
        regionId,
        searchDesc,
        searchGeo,
        regionName,
        stationName,
        baseIndex,
        flgStemmer,
        salaryTypeTitle,
        salaryHour,
        salaryDay,
        salaryWeek,
        salaryMonth,
        webSiteVacancyNum,
        titleWeb
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is VacanciesItemData &&
          other.vacancyId == this.vacancyId &&
          other.vacplacementId == this.vacplacementId &&
          other.profId == this.profId &&
          other.profTitle == this.profTitle &&
          other.placeId == this.placeId &&
          other.placeTitle == this.placeTitle &&
          other.salaryVolume == this.salaryVolume &&
          other.salaryType == this.salaryType &&
          other.directionId == this.directionId &&
          other.directionTitle == this.directionTitle &&
          other.staffType == this.staffType &&
          other.vDescription == this.vDescription &&
          other.address == this.address &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.isActive == this.isActive &&
          other.salaryVolumeEx == this.salaryVolumeEx &&
          other.clientId == this.clientId &&
          other.clientName == this.clientName &&
          other.flgHot == this.flgHot &&
          other.regionId == this.regionId &&
          other.searchDesc == this.searchDesc &&
          other.searchGeo == this.searchGeo &&
          other.regionName == this.regionName &&
          other.stationName == this.stationName &&
          other.baseIndex == this.baseIndex &&
          other.flgStemmer == this.flgStemmer &&
          other.salaryTypeTitle == this.salaryTypeTitle &&
          other.salaryHour == this.salaryHour &&
          other.salaryDay == this.salaryDay &&
          other.salaryWeek == this.salaryWeek &&
          other.salaryMonth == this.salaryMonth &&
          other.webSiteVacancyNum == this.webSiteVacancyNum &&
          other.titleWeb == this.titleWeb);
}

class VacanciesItemCompanion extends UpdateCompanion<VacanciesItemData> {
  final Value<int> vacancyId;
  final Value<int> vacplacementId;
  final Value<int> profId;
  final Value<String> profTitle;
  final Value<int?> placeId;
  final Value<String?> placeTitle;
  final Value<String?> salaryVolume;
  final Value<int> salaryType;
  final Value<int> directionId;
  final Value<String> directionTitle;
  final Value<int> staffType;
  final Value<String> vDescription;
  final Value<String> address;
  final Value<double?> latitude;
  final Value<double?> longitude;
  final Value<int> isActive;
  final Value<String> salaryVolumeEx;
  final Value<int> clientId;
  final Value<String> clientName;
  final Value<int?> flgHot;
  final Value<int?> regionId;
  final Value<String> searchDesc;
  final Value<String> searchGeo;
  final Value<String?> regionName;
  final Value<String?> stationName;
  final Value<int> baseIndex;
  final Value<int> flgStemmer;
  final Value<String> salaryTypeTitle;
  final Value<double?> salaryHour;
  final Value<double?> salaryDay;
  final Value<double?> salaryWeek;
  final Value<double?> salaryMonth;
  final Value<String> webSiteVacancyNum;
  final Value<String?> titleWeb;
  final Value<int> rowid;
  const VacanciesItemCompanion({
    this.vacancyId = const Value.absent(),
    this.vacplacementId = const Value.absent(),
    this.profId = const Value.absent(),
    this.profTitle = const Value.absent(),
    this.placeId = const Value.absent(),
    this.placeTitle = const Value.absent(),
    this.salaryVolume = const Value.absent(),
    this.salaryType = const Value.absent(),
    this.directionId = const Value.absent(),
    this.directionTitle = const Value.absent(),
    this.staffType = const Value.absent(),
    this.vDescription = const Value.absent(),
    this.address = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.isActive = const Value.absent(),
    this.salaryVolumeEx = const Value.absent(),
    this.clientId = const Value.absent(),
    this.clientName = const Value.absent(),
    this.flgHot = const Value.absent(),
    this.regionId = const Value.absent(),
    this.searchDesc = const Value.absent(),
    this.searchGeo = const Value.absent(),
    this.regionName = const Value.absent(),
    this.stationName = const Value.absent(),
    this.baseIndex = const Value.absent(),
    this.flgStemmer = const Value.absent(),
    this.salaryTypeTitle = const Value.absent(),
    this.salaryHour = const Value.absent(),
    this.salaryDay = const Value.absent(),
    this.salaryWeek = const Value.absent(),
    this.salaryMonth = const Value.absent(),
    this.webSiteVacancyNum = const Value.absent(),
    this.titleWeb = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  VacanciesItemCompanion.insert({
    required int vacancyId,
    required int vacplacementId,
    required int profId,
    required String profTitle,
    this.placeId = const Value.absent(),
    this.placeTitle = const Value.absent(),
    this.salaryVolume = const Value.absent(),
    required int salaryType,
    required int directionId,
    required String directionTitle,
    required int staffType,
    required String vDescription,
    required String address,
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    required int isActive,
    required String salaryVolumeEx,
    required int clientId,
    required String clientName,
    this.flgHot = const Value.absent(),
    this.regionId = const Value.absent(),
    required String searchDesc,
    required String searchGeo,
    this.regionName = const Value.absent(),
    this.stationName = const Value.absent(),
    required int baseIndex,
    required int flgStemmer,
    required String salaryTypeTitle,
    this.salaryHour = const Value.absent(),
    this.salaryDay = const Value.absent(),
    this.salaryWeek = const Value.absent(),
    this.salaryMonth = const Value.absent(),
    required String webSiteVacancyNum,
    this.titleWeb = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : vacancyId = Value(vacancyId),
        vacplacementId = Value(vacplacementId),
        profId = Value(profId),
        profTitle = Value(profTitle),
        salaryType = Value(salaryType),
        directionId = Value(directionId),
        directionTitle = Value(directionTitle),
        staffType = Value(staffType),
        vDescription = Value(vDescription),
        address = Value(address),
        isActive = Value(isActive),
        salaryVolumeEx = Value(salaryVolumeEx),
        clientId = Value(clientId),
        clientName = Value(clientName),
        searchDesc = Value(searchDesc),
        searchGeo = Value(searchGeo),
        baseIndex = Value(baseIndex),
        flgStemmer = Value(flgStemmer),
        salaryTypeTitle = Value(salaryTypeTitle),
        webSiteVacancyNum = Value(webSiteVacancyNum);
  static Insertable<VacanciesItemData> custom({
    Expression<int>? vacancyId,
    Expression<int>? vacplacementId,
    Expression<int>? profId,
    Expression<String>? profTitle,
    Expression<int>? placeId,
    Expression<String>? placeTitle,
    Expression<String>? salaryVolume,
    Expression<int>? salaryType,
    Expression<int>? directionId,
    Expression<String>? directionTitle,
    Expression<int>? staffType,
    Expression<String>? vDescription,
    Expression<String>? address,
    Expression<double>? latitude,
    Expression<double>? longitude,
    Expression<int>? isActive,
    Expression<String>? salaryVolumeEx,
    Expression<int>? clientId,
    Expression<String>? clientName,
    Expression<int>? flgHot,
    Expression<int>? regionId,
    Expression<String>? searchDesc,
    Expression<String>? searchGeo,
    Expression<String>? regionName,
    Expression<String>? stationName,
    Expression<int>? baseIndex,
    Expression<int>? flgStemmer,
    Expression<String>? salaryTypeTitle,
    Expression<double>? salaryHour,
    Expression<double>? salaryDay,
    Expression<double>? salaryWeek,
    Expression<double>? salaryMonth,
    Expression<String>? webSiteVacancyNum,
    Expression<String>? titleWeb,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (vacancyId != null) 'vacancy_id': vacancyId,
      if (vacplacementId != null) 'vacplacement_id': vacplacementId,
      if (profId != null) 'prof_id': profId,
      if (profTitle != null) 'prof_title': profTitle,
      if (placeId != null) 'place_id': placeId,
      if (placeTitle != null) 'place_title': placeTitle,
      if (salaryVolume != null) 'salary_volume': salaryVolume,
      if (salaryType != null) 'salary_type': salaryType,
      if (directionId != null) 'direction_id': directionId,
      if (directionTitle != null) 'direction_title': directionTitle,
      if (staffType != null) 'staff_type': staffType,
      if (vDescription != null) 'v_description': vDescription,
      if (address != null) 'address': address,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (isActive != null) 'is_active': isActive,
      if (salaryVolumeEx != null) 'salary_volume_ex': salaryVolumeEx,
      if (clientId != null) 'client_id': clientId,
      if (clientName != null) 'client_name': clientName,
      if (flgHot != null) 'flg_hot': flgHot,
      if (regionId != null) 'region_id': regionId,
      if (searchDesc != null) 'search_desc': searchDesc,
      if (searchGeo != null) 'search_geo': searchGeo,
      if (regionName != null) 'region_name': regionName,
      if (stationName != null) 'station_name': stationName,
      if (baseIndex != null) 'base_index': baseIndex,
      if (flgStemmer != null) 'flg_stemmer': flgStemmer,
      if (salaryTypeTitle != null) 'salary_type_title': salaryTypeTitle,
      if (salaryHour != null) 'salary_hour': salaryHour,
      if (salaryDay != null) 'salary_day': salaryDay,
      if (salaryWeek != null) 'salary_week': salaryWeek,
      if (salaryMonth != null) 'salary_month': salaryMonth,
      if (webSiteVacancyNum != null) 'web_site_vacancy_num': webSiteVacancyNum,
      if (titleWeb != null) 'title_web': titleWeb,
      if (rowid != null) 'rowid': rowid,
    });
  }

  VacanciesItemCompanion copyWith(
      {Value<int>? vacancyId,
      Value<int>? vacplacementId,
      Value<int>? profId,
      Value<String>? profTitle,
      Value<int?>? placeId,
      Value<String?>? placeTitle,
      Value<String?>? salaryVolume,
      Value<int>? salaryType,
      Value<int>? directionId,
      Value<String>? directionTitle,
      Value<int>? staffType,
      Value<String>? vDescription,
      Value<String>? address,
      Value<double?>? latitude,
      Value<double?>? longitude,
      Value<int>? isActive,
      Value<String>? salaryVolumeEx,
      Value<int>? clientId,
      Value<String>? clientName,
      Value<int?>? flgHot,
      Value<int?>? regionId,
      Value<String>? searchDesc,
      Value<String>? searchGeo,
      Value<String?>? regionName,
      Value<String?>? stationName,
      Value<int>? baseIndex,
      Value<int>? flgStemmer,
      Value<String>? salaryTypeTitle,
      Value<double?>? salaryHour,
      Value<double?>? salaryDay,
      Value<double?>? salaryWeek,
      Value<double?>? salaryMonth,
      Value<String>? webSiteVacancyNum,
      Value<String?>? titleWeb,
      Value<int>? rowid}) {
    return VacanciesItemCompanion(
      vacancyId: vacancyId ?? this.vacancyId,
      vacplacementId: vacplacementId ?? this.vacplacementId,
      profId: profId ?? this.profId,
      profTitle: profTitle ?? this.profTitle,
      placeId: placeId ?? this.placeId,
      placeTitle: placeTitle ?? this.placeTitle,
      salaryVolume: salaryVolume ?? this.salaryVolume,
      salaryType: salaryType ?? this.salaryType,
      directionId: directionId ?? this.directionId,
      directionTitle: directionTitle ?? this.directionTitle,
      staffType: staffType ?? this.staffType,
      vDescription: vDescription ?? this.vDescription,
      address: address ?? this.address,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      isActive: isActive ?? this.isActive,
      salaryVolumeEx: salaryVolumeEx ?? this.salaryVolumeEx,
      clientId: clientId ?? this.clientId,
      clientName: clientName ?? this.clientName,
      flgHot: flgHot ?? this.flgHot,
      regionId: regionId ?? this.regionId,
      searchDesc: searchDesc ?? this.searchDesc,
      searchGeo: searchGeo ?? this.searchGeo,
      regionName: regionName ?? this.regionName,
      stationName: stationName ?? this.stationName,
      baseIndex: baseIndex ?? this.baseIndex,
      flgStemmer: flgStemmer ?? this.flgStemmer,
      salaryTypeTitle: salaryTypeTitle ?? this.salaryTypeTitle,
      salaryHour: salaryHour ?? this.salaryHour,
      salaryDay: salaryDay ?? this.salaryDay,
      salaryWeek: salaryWeek ?? this.salaryWeek,
      salaryMonth: salaryMonth ?? this.salaryMonth,
      webSiteVacancyNum: webSiteVacancyNum ?? this.webSiteVacancyNum,
      titleWeb: titleWeb ?? this.titleWeb,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (vacancyId.present) {
      map['vacancy_id'] = Variable<int>(vacancyId.value);
    }
    if (vacplacementId.present) {
      map['vacplacement_id'] = Variable<int>(vacplacementId.value);
    }
    if (profId.present) {
      map['prof_id'] = Variable<int>(profId.value);
    }
    if (profTitle.present) {
      map['prof_title'] = Variable<String>(profTitle.value);
    }
    if (placeId.present) {
      map['place_id'] = Variable<int>(placeId.value);
    }
    if (placeTitle.present) {
      map['place_title'] = Variable<String>(placeTitle.value);
    }
    if (salaryVolume.present) {
      map['salary_volume'] = Variable<String>(salaryVolume.value);
    }
    if (salaryType.present) {
      map['salary_type'] = Variable<int>(salaryType.value);
    }
    if (directionId.present) {
      map['direction_id'] = Variable<int>(directionId.value);
    }
    if (directionTitle.present) {
      map['direction_title'] = Variable<String>(directionTitle.value);
    }
    if (staffType.present) {
      map['staff_type'] = Variable<int>(staffType.value);
    }
    if (vDescription.present) {
      map['v_description'] = Variable<String>(vDescription.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<double>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<double>(longitude.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<int>(isActive.value);
    }
    if (salaryVolumeEx.present) {
      map['salary_volume_ex'] = Variable<String>(salaryVolumeEx.value);
    }
    if (clientId.present) {
      map['client_id'] = Variable<int>(clientId.value);
    }
    if (clientName.present) {
      map['client_name'] = Variable<String>(clientName.value);
    }
    if (flgHot.present) {
      map['flg_hot'] = Variable<int>(flgHot.value);
    }
    if (regionId.present) {
      map['region_id'] = Variable<int>(regionId.value);
    }
    if (searchDesc.present) {
      map['search_desc'] = Variable<String>(searchDesc.value);
    }
    if (searchGeo.present) {
      map['search_geo'] = Variable<String>(searchGeo.value);
    }
    if (regionName.present) {
      map['region_name'] = Variable<String>(regionName.value);
    }
    if (stationName.present) {
      map['station_name'] = Variable<String>(stationName.value);
    }
    if (baseIndex.present) {
      map['base_index'] = Variable<int>(baseIndex.value);
    }
    if (flgStemmer.present) {
      map['flg_stemmer'] = Variable<int>(flgStemmer.value);
    }
    if (salaryTypeTitle.present) {
      map['salary_type_title'] = Variable<String>(salaryTypeTitle.value);
    }
    if (salaryHour.present) {
      map['salary_hour'] = Variable<double>(salaryHour.value);
    }
    if (salaryDay.present) {
      map['salary_day'] = Variable<double>(salaryDay.value);
    }
    if (salaryWeek.present) {
      map['salary_week'] = Variable<double>(salaryWeek.value);
    }
    if (salaryMonth.present) {
      map['salary_month'] = Variable<double>(salaryMonth.value);
    }
    if (webSiteVacancyNum.present) {
      map['web_site_vacancy_num'] = Variable<String>(webSiteVacancyNum.value);
    }
    if (titleWeb.present) {
      map['title_web'] = Variable<String>(titleWeb.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('VacanciesItemCompanion(')
          ..write('vacancyId: $vacancyId, ')
          ..write('vacplacementId: $vacplacementId, ')
          ..write('profId: $profId, ')
          ..write('profTitle: $profTitle, ')
          ..write('placeId: $placeId, ')
          ..write('placeTitle: $placeTitle, ')
          ..write('salaryVolume: $salaryVolume, ')
          ..write('salaryType: $salaryType, ')
          ..write('directionId: $directionId, ')
          ..write('directionTitle: $directionTitle, ')
          ..write('staffType: $staffType, ')
          ..write('vDescription: $vDescription, ')
          ..write('address: $address, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('isActive: $isActive, ')
          ..write('salaryVolumeEx: $salaryVolumeEx, ')
          ..write('clientId: $clientId, ')
          ..write('clientName: $clientName, ')
          ..write('flgHot: $flgHot, ')
          ..write('regionId: $regionId, ')
          ..write('searchDesc: $searchDesc, ')
          ..write('searchGeo: $searchGeo, ')
          ..write('regionName: $regionName, ')
          ..write('stationName: $stationName, ')
          ..write('baseIndex: $baseIndex, ')
          ..write('flgStemmer: $flgStemmer, ')
          ..write('salaryTypeTitle: $salaryTypeTitle, ')
          ..write('salaryHour: $salaryHour, ')
          ..write('salaryDay: $salaryDay, ')
          ..write('salaryWeek: $salaryWeek, ')
          ..write('salaryMonth: $salaryMonth, ')
          ..write('webSiteVacancyNum: $webSiteVacancyNum, ')
          ..write('titleWeb: $titleWeb, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $VacanciesItemTable vacanciesItem = $VacanciesItemTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [vacanciesItem];
}
