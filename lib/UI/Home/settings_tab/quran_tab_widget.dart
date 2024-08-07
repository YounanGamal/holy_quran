import 'package:flutter/material.dart';
import 'package:holy_quran/Providers/settings_provider.dart';
import 'package:holy_quran/UI/Home/settings_tab/Theme/theme_bottom_sheet.dart';
import 'package:holy_quran/UI/Home/settings_tab/local/language_bottom_sheet.dart';
import 'package:provider/provider.dart';

class SettingsTabWidget extends StatefulWidget {
  static const String rounteName = 'SettingsTabWidget';

  @override
  State<SettingsTabWidget> createState() => _SettingsTabWidgetState();
}

class _SettingsTabWidgetState extends State<SettingsTabWidget> {
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return Container(
      margin: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Theme',
            style: Theme.of(context).textTheme.labelMedium,
          ),
          const SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet();

            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                border:
                    Border.all(color: Theme.of(context).primaryColor, width: 2),
              ),
              child: Text(
                provider.currentTheme == ThemeMode.light ? 'Light' : 'Dark',
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Language',
            style: Theme.of(context).textTheme.labelMedium,
          ),
          const SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                border:
                    Border.all(color: Theme.of(context).primaryColor, width: 2),
              ),
              child: Text(
                'English',
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          )
        ],
      ),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        builder: (context) => ThemeBottomSheet());
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      builder: (context) => LanguageBottomSheet(),
    );
  }
}
