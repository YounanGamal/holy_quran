import 'package:flutter/material.dart';
import 'package:holy_quran/UI/Home/hadeth_tab/hadeth_detials_screen/hadeth_detials.dart';
import 'package:holy_quran/UI/Home/hadeth_tab/hadeth_model.dart';

class HadethTitleWidget extends StatelessWidget {
  HadethItem hadethItem;

  HadethTitleWidget({super.key, required this.hadethItem});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(HadethDetials.routeName, arguments: hadethItem);
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Text(
          hadethItem.title,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
