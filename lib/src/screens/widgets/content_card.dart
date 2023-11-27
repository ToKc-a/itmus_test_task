import 'package:flutter/material.dart';

class ContentCard extends StatelessWidget {
  final Widget content;
  const ContentCard({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: content,
    );
  }
}