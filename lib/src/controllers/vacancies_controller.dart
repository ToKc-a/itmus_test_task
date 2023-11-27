
import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import '../domain/models/filter_model.dart';
import '../domain/models/vacancies_model.dart';
import '../domain/models/vacancy_model.dart';

class VacanciesController extends GetxController
    with StateMixin<List<VacancyModel>> {
  final dio = Dio();
  final dataBase = AppDatabase();
  List<VacancyModel> listVacancies = <VacancyModel>[];
  final RxInt page = 0.obs;
  final String url = 'https://gsr-rabota.ru/api/v2/Vacancies/All/List';
  var logger = Logger(
    printer: PrettyPrinter(),
  );
  final ScrollController scrollController = ScrollController();
  List<int> selectedClientId = <int>[];
  List<int> selectedPlaceId = <int>[];
  TextEditingController searchController = TextEditingController();
  List<FilterModel> clients = [];
  List<FilterModel> places = [];
  List<FilterModel> professions = [];
  List<VacancyModel> listVacanciesForMap = <VacancyModel>[];
  List<PlacemarkMapObject> vacancyOnMap = [];
  final RxBool showFilter = false.obs;
  final RxBool isMap = false.obs;

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(() {
      if (scrollController.position.maxScrollExtent ==
          scrollController.offset) {
        page(page() + 1);
        createListVacancies();
      }
    });
    loadData();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void createListVacancies() async {
    try {
      var query = (dataBase.select(dataBase.vacanciesItem)
        ..limit(10, offset: page() * 10));
      if (clients.where((element) => element.isSelect).isNotEmpty) {
        query.where((tbl) => tbl.clientId.isIn(clients
            .where((element) => element.isSelect)
            .map((e) => e.filterId)
            .toList()));
      }
      if (places.where((element) => element.isSelect).isNotEmpty) {
        query.where((tbl) => tbl.placeId.isIn(places
            .where((element) => element.isSelect)
            .map((e) => e.filterId)
            .toList()));
      }
      if (professions.where((element) => element.isSelect).isNotEmpty) {
        query.where((tbl) => tbl.profId.isIn(professions
            .where((element) => element.isSelect)
            .map((e) => e.filterId)
            .toList()));
      }
      if (searchController.text.isNotEmpty) {
        query.where((tbl) => tbl.searchDesc.like('%${searchController.text}%'));
      }
      final res = await query.get();
      listVacancies.addAll(res.map((e) => VacancyModel(
            vacancyId: e.vacancyId,
            vacPlacementId: e.vacplacementId,
            profId: e.profId,
            profTitle: e.profTitle,
            placeId: e.placeId,
            placeTitle: e.placeTitle,
            salaryVolume: e.salaryVolume,
            salaryType: e.salaryType,
            directionId: e.directionId,
            directionTitle: e.directionTitle,
            staffType: e.staffType,
            vDescription: e.vDescription,
            address: e.address,
            latitude: e.latitude,
            longitude: e.longitude,
            isActive: e.isActive,
            salaryVolumeEx: e.salaryVolumeEx,
            clientId: e.clientId,
            clientName: e.clientName,
            flgHot: e.flgHot,
            regionId: e.regionId,
            searchDesc: e.searchDesc,
            searchGeo: e.searchGeo,
            regionName: e.regionName,
            stationName: e.stationName,
            baseIndex: e.baseIndex,
            flgStemmer: e.flgStemmer,
            salaryTypeTitle: e.salaryTypeTitle,
            salaryHour: e.salaryHour,
            salaryDay: e.salaryDay,
            salaryWeek: e.salaryWeek,
            salaryMonth: e.salaryMonth,
            webSiteVacancyNum: e.webSiteVacancyNum,
            titleWeb: e.titleWeb,
          )));
      change(listVacancies,
          status: (listVacancies.isEmpty)
              ? RxStatus.empty()
              : RxStatus.success());
      logger.i('Список listVacancies = ${listVacancies.length}');
    } catch (e, s) {
      change(null, status: RxStatus.error(e.toString()));
      logger.e("Error log", error: e, stackTrace: s);
    }
  }

  void filtered() async {
    listVacancies.clear();
    page(0);
    createListVacancies();
  }

  void loadData() async {
    try {
      final response = await dio.get(url);

      List<VacancyModel> vacancyList = List<VacancyModel>.from(
          response.data.map((x) => VacancyModel.fromJson(x)));

      vacancyList.forEach((element) {
        if (clients.where((p0) => p0.filterId == element.clientId).isEmpty) {
          clients.add(FilterModel(
              filterId: element.clientId, filterTitle: element.clientName));
        }
        if (places.where((p0) => p0.filterId == element.placeId).isEmpty) {
          if (element.placeId != null && element.placeTitle != null) {
            places.add(FilterModel(
                filterId: element.placeId!, filterTitle: element.placeTitle!));
          }
        }
        if (professions.where((p0) => p0.filterId == element.profId).isEmpty) {
          professions.add(FilterModel(
              filterId: element.profId, filterTitle: element.profTitle));
        }
        if (listVacanciesForMap.where((p0) => p0.latitude == element.latitude).isEmpty){
          listVacanciesForMap.add(element);
        }
      });
      logger.i('Список clients = ${clients.length}');
      logger.i('Список places = ${places.length}');
      logger.i('Список professions = ${professions.length}');
      logger.i('Список listVacanciesForMap = ${listVacanciesForMap.length}');
      logger.i('Список vacancyList = ${vacancyList.length}');

      dataBase.delete(dataBase.vacanciesItem).go();

      await dataBase.transaction(() async {
        await Future.wait(vacancyList.map((e) async {
          await dataBase.into(dataBase.vacanciesItem).insert(VacanciesItemData(
                vacancyId: e.vacancyId,
                vacplacementId: e.vacPlacementId,
                profId: e.profId,
                profTitle: e.profTitle,
                placeId: e.placeId,
                placeTitle: e.placeTitle,
                salaryVolume: e.salaryVolume,
                salaryType: e.salaryType,
                directionId: e.directionId,
                directionTitle: e.directionTitle,
                staffType: e.staffType,
                vDescription: e.vDescription,
                address: e.address,
                latitude: e.latitude,
                longitude: e.longitude,
                isActive: e.isActive,
                salaryVolumeEx: e.salaryVolumeEx,
                clientId: e.clientId,
                clientName: e.clientName,
                flgHot: e.flgHot,
                regionId: e.regionId,
                searchDesc: e.searchDesc,
                searchGeo: e.searchGeo,
                regionName: e.regionName,
                stationName: e.stationName,
                baseIndex: e.baseIndex,
                flgStemmer: e.flgStemmer,
                salaryTypeTitle: e.salaryTypeTitle,
                salaryHour: e.salaryHour,
                salaryDay: e.salaryDay,
                salaryWeek: e.salaryWeek,
                salaryMonth: e.salaryMonth,
                webSiteVacancyNum: e.webSiteVacancyNum,
                titleWeb: e.titleWeb,
              ));
        }));
      });
      logger.i("Load data done!");
      logger.i(
          'Количество элементов в базе данных = ${await dataBase.select(dataBase.vacanciesItem).get().then((value) => value.length)}');
      createListVacancies();
    } catch (e, s) {
      change(null, status: RxStatus.error(e.toString()));
      logger.e("Error log", error: e, stackTrace: s);
    }
  }
}
