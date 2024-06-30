import 'package:flutter/material.dart';
import 'package:holy_quran/UI/Home/quran_tab/chapter_detials_screen/chapter_detials_widget.dart';

class ChapterTitleWidget extends StatelessWidget {
  String suraNames;
  int versesNumber;
  int index;

  ChapterTitleWidget({
    required this.suraNames,
    required this.versesNumber,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ChapterDetailsWidget.routeName,
            arguments: ChapterDetialsArgs(suraName: suraNames, index: index));
      },
      child: IntrinsicHeight(
        child: Row(children: [
          Expanded(
            child: Text(
              textAlign: TextAlign.center,
              '${versesNumber}',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          VerticalDivider(
            color: Theme.of(context).dividerColor,
            thickness: 2.5,
          ),
          Expanded(
            child: Text(
              textAlign: TextAlign.center,
              suraNames,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ]),
      ),
    );
  }
}

class ChapterDetialsArgs {
  String suraName;
  int index;

  ChapterDetialsArgs({required this.suraName, required this.index});
}
