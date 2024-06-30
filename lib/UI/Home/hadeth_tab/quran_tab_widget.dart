import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:holy_quran/UI/Home/hadeth_tab/hadeth_model.dart';
import 'package:holy_quran/UI/Home/hadeth_tab/hadeth_title_widget.dart';

class HadethTabWidget extends StatefulWidget {
  static const String rounteName = 'HadethTabWidget';

  @override
  State<HadethTabWidget> createState() => _HadethTabWidgetState();
}

class _HadethTabWidgetState extends State<HadethTabWidget> {
  List<HadethItem> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) loadHadethFile();
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Image.asset(
              'assets/image/59253-quran-basmala-islamic-kufic-arabic-calligraphy-icon.png'),
        ),
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.symmetric(
              horizontal: BorderSide(
                color: Theme.of(context).dividerColor,
                width: 2,
              ),
            ),
          ),
          child: Text(
            'الأحاديث',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Expanded(
          flex: 3,
          child: allAhadeth.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: allAhadeth.length,
                  itemBuilder: (context, index) =>
                      HadethTitleWidget(hadethItem: allAhadeth[index])),
        ),
      ],
    );
  }

  void loadHadethFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadethList = fileContent.trim().split('#');
    for (int i = 0; i < hadethList.length; i++) {
      String singleHadeth = hadethList[i];
      List<String> hadethLines = singleHadeth.trim().split('\n');
      String hadethTitle = hadethLines[0];
      hadethLines.removeAt(0);
      String hadethContat = hadethLines.join('\n');
      HadethItem hadethItem =
          HadethItem(title: hadethTitle, content: hadethContat);
      allAhadeth.add(hadethItem);
    }
    setState(() {});
  }
}
