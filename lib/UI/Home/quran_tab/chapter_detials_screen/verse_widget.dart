import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
  String verse;

  VerseWidget({super.key, required this.verse});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(verse,
          textDirection: TextDirection.rtl,
          style: Theme.of(context).textTheme.displaySmall),
    );
  }
}
