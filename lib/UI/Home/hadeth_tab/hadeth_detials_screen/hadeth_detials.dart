import 'package:flutter/material.dart';
import 'package:holy_quran/Providers/settings_provider.dart';
import 'package:holy_quran/UI/Home/hadeth_tab/hadeth_model.dart';
import 'package:provider/provider.dart';

class HadethDetials extends StatelessWidget {
  static const String routeName = 'hadeth-detials';
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    HadethItem args = ModalRoute.of(context)?.settings.arguments as HadethItem;
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              provider.currentTheme == ThemeMode.light
                  ? 'assets/image/background.png'
                  : 'assets/image/dark_background.png',
            ),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('Islami'),
          ),
          body: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(15),
            ),
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Text(
                  args.title,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  height: 2,
                  color: Theme.of(context).colorScheme.primary,
                  width: double.infinity,
                ),
                Expanded(
                    child: ListView.builder(
                        itemCount: args.content.length,
                        itemBuilder: (context, index) => Text(
                              args.content,
                              textDirection: TextDirection.rtl,
                              style: Theme.of(context).textTheme.displaySmall,
                            ))),
              ],
            ),
          ),
        ));
  }
}
