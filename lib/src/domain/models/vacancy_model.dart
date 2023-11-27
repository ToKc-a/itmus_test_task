import 'dart:convert';

import '../../utilities/utilities.dart';

List<VacancyModel> vacancyModelFromJson(String str) => List<VacancyModel>.from(
    json.decode(str).map((x) => VacancyModel.fromJson(x)));

String vacancyModelToJson(List<VacancyModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class VacancyModel {
  final int vacancyId;
  final int vacPlacementId;
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
  // final dynamic numEntries;
  // final dynamic numGeoEntries;
  final int baseIndex;
  final int flgStemmer;
  final String salaryTypeTitle;
  final double? salaryHour;
  final double? salaryDay;
  final double? salaryWeek;
  final double? salaryMonth;
  final String webSiteVacancyNum;
  final String? titleWeb;

  VacancyModel({
    required this.vacancyId,
    required this.vacPlacementId,
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
    // this.numEntries,
    // this.numGeoEntries,
    required this.baseIndex,
    required this.flgStemmer,
    required this.salaryTypeTitle,
    this.salaryHour,
    this.salaryDay,
    this.salaryWeek,
    this.salaryMonth,
    required this.webSiteVacancyNum,
    this.titleWeb,
  });

  factory VacancyModel.fromJson(Map<String, dynamic> json) => VacancyModel(
        vacancyId: json["vacancy_id"],
        vacPlacementId: json["vacplacement_id"],
        profId: json["profid"],
        profTitle: json["proftitle"],
        placeId: json["placeid"],
        placeTitle: json["placetitle"],
        salaryVolume: Utils.parsToString(json["salary_volume"]),
        salaryType: json["salary_type"],
        directionId: json["directionid"],
        directionTitle: json["directiontitle"],
        staffType: json["stafftype"],
        vDescription: json["vdescription"],
        address: json["address"],
        latitude: json["latitude"]?.toDouble(),
        longitude: json["longitude"]?.toDouble(),
        isActive: json["is_active"],
        salaryVolumeEx: json["salary_volume_ex"],
        clientId: json["clientid"],
        clientName: json["clientname"],
        flgHot: json["flghot"],
        regionId: json["region_id"],
        searchDesc: json["search_desc"],
        searchGeo: json["search_geo"],
        regionName: json["regionname"],
        stationName: json["stationname"],
        // numEntries: json["numentries"],
        // numGeoEntries: json["numgeoentries"],
        baseIndex: json["baseindex"],
        flgStemmer: json["flgstemmer"],
        salaryTypeTitle: json["salary_type_title"],
        salaryHour: json["salary_hour"],
        salaryDay: json["salary_day"],
        salaryWeek: json["salary_week"],
        salaryMonth: json["salary_month"],
        webSiteVacancyNum: json["websitevacancynum"],
        titleWeb: json["titleweb"],
      );

  Map<String, dynamic> toJson() => {
        "vacancy_id": vacancyId,
        "vacplacement_id": vacPlacementId,
        "profid": profId,
        "proftitle": profTitle,
        "placeid": placeId,
        "placetitle": placeTitle,
        "salary_volume": salaryVolume,
        "salary_type": salaryType,
        "directionid": directionId,
        "directiontitle": directionTitle,
        "stafftype": staffType,
        "vdescription": vDescription,
        "address": address,
        "latitude": latitude,
        "longitude": longitude,
        "is_active": isActive,
        "salary_volume_ex": salaryVolumeEx,
        "clientid": clientId,
        "clientname": clientName,
        "flghot": flgHot,
        "region_id": regionId,
        "search_desc": searchDesc,
        "search_geo": searchGeo,
        "regionname": regionName,
        "stationname": stationName,
        // "numentries": numEntries,
        // "numgeoentries": numGeoEntries,
        "baseindex": baseIndex,
        "flgstemmer": flgStemmer,
        "salary_type_title": salaryTypeTitle,
        "salary_hour": salaryHour,
        "salary_day": salaryDay,
        "salary_week": salaryWeek,
        "salary_month": salaryMonth,
        "websitevacancynum": webSiteVacancyNum,
        "titleweb": titleWeb,
      };
}

// enum Directiontitle {
//   logistics,
//   retail,
//   cleaning,
//   hoReCa,
//   tempStaff,
//   production,
//   warehouseLogistics,
//   services
// }
//
// final directiontitleValues = EnumValues({
//   "Логистика": Directiontitle.logistics,
//   "Ритейл": Directiontitle.retail,
//   "Клининг": Directiontitle.cleaning,
//   "HoReCa": Directiontitle.hoReCa,
//   "Временный персонал --": Directiontitle.tempStaff,
//   "Производство": Directiontitle.production,
//   "Складская Логистика": Directiontitle.warehouseLogistics,
//   "Услуги": Directiontitle.services
// });
//
// enum SalaryTypeTitle { month, week, hour, shift }
//
// final salaryTypeTitleValues = EnumValues({
//   "р./мес.": SalaryTypeTitle.month,
//   "р./нед.": SalaryTypeTitle.week,
//   "р./час.": SalaryTypeTitle.hour,
//   "р./смена": SalaryTypeTitle.shift
// });
//
// class EnumValues<T> {
//   Map<String, T> map;
//   late Map<T, String> reverseMap;
//
//   EnumValues(this.map);
//
//   Map<T, String> get reverse {
//     reverseMap = map.map((k, v) => MapEntry(v, k));
//     return reverseMap;
//   }
// }
