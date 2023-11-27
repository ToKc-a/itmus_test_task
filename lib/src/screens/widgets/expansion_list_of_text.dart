import 'package:flutter/material.dart';
import 'package:expansion_widget/expansion_widget.dart';
import 'package:get/get.dart';
import 'package:itmus_test_task/src/controllers/vacancies_controller.dart';

import 'dart:math' as math;

import 'package:itmus_test_task/src/domain/models/filter_model.dart';

class ExpansionListOfText extends GetView<VacanciesController> {
  final String title;
  final List<FilterModel> content;

  const ExpansionListOfText(
      {Key? key, required this.title, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey, width: 1)),
      child: ExpansionWidget(
          initiallyExpanded: false,
          titleBuilder:
              (double animationValue, _, bool isExpanded, toogleFunction) {
            return InkWell(
                splashColor: Colors.transparent,
                onTap: () => toogleFunction(animated: true),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Transform.rotate(
                      angle: math.pi * animationValue,
                      alignment: Alignment.center,
                      child: const Icon(Icons.keyboard_arrow_down_outlined,
                          color: Colors.grey, size: 30),
                    )
                  ],
                ));
          },
          content: SizedBox(
            height: MediaQuery.of(context).size.height / 4,
            child: ListView.builder(
                itemCount: content.length,
                itemBuilder: (context, index) => CheckboxListTile(
                    title: Text(content[index].filterTitle),
                    value: content[index].isSelect,
                    onChanged: (value) {
                      content[index].isSelect = value!;
                      controller.filtered();
                    })),
          ),),
    );
  }
}