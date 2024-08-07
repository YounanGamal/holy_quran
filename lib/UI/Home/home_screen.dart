import 'package:flutter/material.dart';
import 'package:holy_quran/Providers/settings_provider.dart';
import 'package:holy_quran/UI/Home/hadeth_tab/quran_tab_widget.dart';
import 'package:holy_quran/UI/Home/quran_tab/quran_tab_widget.dart';
import 'package:holy_quran/UI/Home/radio_tab/quran_tab_widget.dart';
import 'package:holy_quran/UI/Home/sebha_tab/quran_tab_widget.dart';
import 'package:holy_quran/UI/Home/settings_tab/quran_tab_widget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home-Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    QuranTabWidget(),
    HadethTabWidget(),
    SebhaTabWidget(),
    RadioTabWidget(),
    SettingsTabWidget(),
  ];

  int sellectedIndex = 0;

  @override
  Widget build(BuildContext context) {
  SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            provider.currentTheme == ThemeMode.light
                ? 'assets/image/default_bg.png'
                : 'assets/image/dark_bg.png',
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Islami'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: sellectedIndex,
          onTap: (value) {
            sellectedIndex = value;
            setState(() {});
          },
          backgroundColor: Color(0xffB7935F),
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: ImageIcon(AssetImage('assets/image/icon_quran.png')),
              label: 'Quran',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: ImageIcon(AssetImage('assets/image/icon_hadeth.png')),
              label: 'Hadeth',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: ImageIcon(AssetImage('assets/image/icon_sebha.png')),
              label: 'Sebha',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: ImageIcon(AssetImage('assets/image/icon_radio.png')),
              label: 'Radio',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
        body: tabs[sellectedIndex],
      ),
    );
  }
}
