import 'package:flutter/material.dart';
import 'package:holy_quran/Providers/settings_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(15),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              provider.changeApplicationTheme(ThemeMode.light);
            },
            child: provider.currentTheme == ThemeMode.light
                ? getSelectedTheme('Light')
                : getUnSelectedTheme('Light'),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              provider.changeApplicationTheme(ThemeMode.dark);
            },
            child: provider.currentTheme == ThemeMode.dark
                ? getSelectedTheme('Dark')
                : getUnSelectedTheme('Dark'),
          ),
        ],
      ),
    );
  }

  getSelectedTheme(String selectedLanguage) {
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

  getUnSelectedTheme(String unSelectedLanguage) {
    return Text(
      unSelectedLanguage,
      style: TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
    );
  }
}
