import 'package:flutter/material.dart';

class TextInColumn extends StatelessWidget {
  final String title;
  final String text;

  const TextInColumn({super.key, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: const TextStyle(
                color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w400)),
        const SizedBox(height: 10),
        Text(text,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500)),
      ],
    );
  }
}
