import 'package:flutter/material.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getSelectedLanguage('English'),
          const SizedBox(
            height: 10,
          ),
          getUnSelectedLanguage('Arbic'),
        ],
      ),
    );
  }

  getSelectedLanguage(String selectedLanguage) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          selectedLanguage,
          style: TextStyle(
            fontSize: 22,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        Icon(
          Icons.check,
          color: Theme.of(context).colorScheme.primary,
          size: 30,
        )
      ],
    );
  }

  getUnSelectedLanguage(String unSelectedLanguage) {
    return Text(
      unSelectedLanguage,
      style: TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
    );
  }
}
