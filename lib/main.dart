import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itmus_test_task/src/controllers/vacancies_controller.dart';
import 'package:itmus_test_task/src/screens/vacancies_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      initialBinding: AppBinding(),
      home: const VacanciesListScreen(),
    );
  }
}

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VacanciesController());
  }
}
