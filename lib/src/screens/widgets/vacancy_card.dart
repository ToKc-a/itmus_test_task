import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../domain/models/vacancy_model.dart';
import '../vacancy_detail_screen.dart';

class VacancyCard extends StatelessWidget {
  final VacancyModel vacancy;

  const VacancyCard({super.key, required this.vacancy});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text(vacancy.placeTitle ?? 'Не указан',
                  style:
                      const TextStyle(color: Colors.white, fontSize: 14)),
              if (vacancy.titleWeb != null)
                Text(vacancy.titleWeb!,
                    style: const TextStyle(color: Colors.white)),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Text(vacancy.profTitle,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400)),
              ),
              const SizedBox(width: 15),
              Expanded(
                flex: 1,
                child: Text(vacancy.salaryVolumeEx.replaceAll(' ', ''),
                    textAlign: TextAlign.end,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500)),
              ),
            ],
          ),
          const SizedBox(height: 5),
          const Divider(color: Colors.white, height: 1,thickness: 1,),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(vacancy.directionTitle,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400)),
              const SizedBox(width: 15),
              Expanded(
                child: Text(vacancy.clientName,
                    textAlign: TextAlign.end,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Center(
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(width: 1.0, color: Colors.white),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () => Get.to(() =>VacancyDetailScreen(vacancy: vacancy)),
              child: const Text('Подробнее',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400)),
            ),
          )
        ],
      ),
    );
  }
}
