import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itmus_test_task/src/screens/widgets/content_card.dart';
import 'package:itmus_test_task/src/screens/widgets/text_in_column.dart';

import '../domain/models/vacancy_model.dart';

class VacancyDetailScreen extends StatelessWidget {
  final VacancyModel vacancy;

  const VacancyDetailScreen({super.key, required this.vacancy});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        titleTextStyle: const TextStyle(color: Colors.white),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: const Text('Itmus Test Task'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(vacancy.profTitle,
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w500)),
              const SizedBox(height: 30),
              ContentCard(
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextInColumn(title: 'Оплата', text: vacancy.salaryVolumeEx),
                      const SizedBox(height: 15),
                      TextInColumn(title: 'Адрес', text: vacancy.address),
                    ],
                  )),
              const SizedBox(height: 15),
              ContentCard(
                  content: Text(vacancy.vDescription,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w400))),
            ],
          ),
        ),
      ),
    );
  }
}
