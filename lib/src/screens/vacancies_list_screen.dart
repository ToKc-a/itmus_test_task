import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itmus_test_task/src/controllers/vacancies_controller.dart';
import 'package:itmus_test_task/src/screens/map_screen.dart';
import 'package:itmus_test_task/src/screens/widgets/expansion_list_of_text.dart';
import 'package:itmus_test_task/src/screens/widgets/vacancy_card.dart';
import 'package:toggle_switch/toggle_switch.dart';

class VacanciesListScreen extends GetView<VacanciesController> {
  const VacanciesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return controller.obx(
        (state) => Scaffold(
              backgroundColor: Colors.grey.shade200,
              appBar: AppBar(
                iconTheme: const IconThemeData(color: Colors.white),
                title: const Text('Itmus test task',
                    style: TextStyle(color: Colors.white)),
                backgroundColor: Colors.green,
              ),
              body: SingleChildScrollView(
                controller: controller.scrollController,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                  child: Obx(() => Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: InkWell(
                                    onTap: () => controller.showFilter.toggle(),
                                    child: Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.filter_list_outlined,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Expanded(
                                                child: Text('Показать фильтры',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    )),
                                              )
                                            ],
                                          ),
                                        ))),
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                                child: InkWell(
                                    onTap: () => controller.isMap.toggle(),
                                    child: Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.map,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Expanded(
                                                child: Text('Вакансии на карте',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    )),
                                              )
                                            ],
                                          ),
                                        ))),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          if (controller.showFilter())
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  color: Colors.white,
                                  child: TextField(
                                    controller: controller.searchController,
                                    onChanged: (text) {
                                      controller.filtered();
                                    },
                                    decoration: const InputDecoration(
                                      isDense: true,
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.never,
                                      border: InputBorder.none,
                                      label: Row(
                                        children: [
                                          Icon(Icons.search),
                                          Text('Поиск'),
                                        ],
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        borderSide: BorderSide(
                                            color: Colors.grey, width: 1.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        borderSide: BorderSide(
                                            color: Colors.grey, width: 1.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        borderSide: BorderSide(
                                            color: Colors.grey, width: 1.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        borderSide: BorderSide(
                                            color: Colors.grey, width: 1.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        borderSide: BorderSide(
                                            color: Colors.grey, width: 1.0),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                ExpansionListOfText(
                                    title: 'Компания',
                                    content: controller.clients),
                                const SizedBox(height: 5),
                                ExpansionListOfText(
                                    title: 'Место работы',
                                    content: controller.places),
                                const SizedBox(height: 5),
                                ExpansionListOfText(
                                    title: 'Профессия',
                                    content: controller.professions),
                                const SizedBox(height: 15),
                              ],
                            ),
                          (controller.isMap())
                              ? SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.8,
                                  child: MapScreen(
                                    vacancies: controller.listVacanciesForMap,
                                  ))
                              : ListView.separated(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: state!.length + 1,
                                  itemBuilder: (context, index) {
                                    if (index < state.length) {
                                      return VacancyCard(vacancy: state[index]);
                                    } else {
                                      return const SizedBox();
                                    }
                                  },
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(height: 10),
                                ),
                        ],
                      )),
                ),
              ),
            ),
        onError: (e) => const Scaffold(
              body: Center(
                child: Text(
                  'Ошибка загрузки данных',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ),
        onLoading: const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
        onEmpty: const Scaffold(
          body: Center(
            child: Text(
              'Данные отсутствуют',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
        ));
  }
}
