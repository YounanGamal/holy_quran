import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:holy_quran/Providers/settings_provider.dart';
import 'package:holy_quran/UI/Home/quran_tab/chapter_detials_screen/verse_widget.dart';
import 'package:holy_quran/UI/Home/quran_tab/chapter_title_widget.dart';
import 'package:provider/provider.dart';

class ChapterDetailsWidget extends StatefulWidget {
  static const String routeName = 'chapter-details';

  @override
  State<ChapterDetailsWidget> createState() => _ChapterDetailsWidgetState();
}

class _ChapterDetailsWidgetState extends State<ChapterDetailsWidget> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    ChapterDetialsArgs args =
        ModalRoute.of(context)?.settings.arguments as ChapterDetialsArgs;
    if (verses.isEmpty) readFile(args.index);
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
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Theme.of(context).cardColor,
          ),
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Text(args.suraName,
                  style: Theme.of(context).textTheme.displaySmall),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                height: 2,
                color: Theme.of(context).dividerColor,
                width: double.infinity,
              ),
              verses.isEmpty
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : Expanded(
                      child: ListView.builder(
                          itemCount: verses.length,
                          itemBuilder: (context, index) =>
                              VerseWidget(verse: verses[index])),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  void readFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> suraLines = fileContent.split('\n');
    verses = suraLines;
    setState(() {});
  }
}
