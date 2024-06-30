import 'package:flutter/material.dart';
import 'package:holy_quran/Providers/settings_provider.dart';
import 'package:holy_quran/UI/Home/hadeth_tab/hadeth_detials_screen/hadeth_detials.dart';
import 'package:holy_quran/UI/Home/home_screen.dart';
import 'package:holy_quran/UI/Home/quran_tab/chapter_detials_screen/chapter_detials_widget.dart';
import 'package:holy_quran/UI/Style/my_theme_data.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SettingsProvider(),
      child: const HolyQuran(),
    ),
  );
}

class HolyQuran extends StatelessWidget {
  const HolyQuran({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      themeMode: provider.currentTheme,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        ChapterDetailsWidget.routeName: (context) => ChapterDetailsWidget(),
        HadethDetials.routeName: (context) => HadethDetials(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
