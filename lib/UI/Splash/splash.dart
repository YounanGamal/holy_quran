import 'dart:async';

import 'package:flutter/material.dart';
import 'package:holy_quran/Providers/settings_provider.dart';
import 'package:holy_quran/UI/Home/home_screen.dart';
import 'package:provider/provider.dart';

class Splash extends StatefulWidget {
  static const String routeName = 'splash';

  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            provider.currentTheme == ThemeMode.light
                ? 'assets/image/bg2.png'
                : 'assets/image/bg.png',
          ),fit: BoxFit.cover
        ),
      ),
      child: Image.asset(
        provider.currentTheme == ThemeMode.light
            ? 'assets/image/logo.png'
            : 'assets/image/logo2.png',
      ),
    );
  }
}
