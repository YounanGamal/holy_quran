import 'package:flutter/material.dart';

class SebhaTabWidget extends StatefulWidget {
  static const String rounteName = 'SebhaTabWidget';

  @override
  State<SebhaTabWidget> createState() => _SebhaTabWidgetState();
}

class _SebhaTabWidgetState extends State<SebhaTabWidget> {
  int count = 0;

  List<String> askar = [
    'سبحان الله',
    'الحمد لله',
    'الله أكبر',
  ];

  int index = 0;
  double angle = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset('assets/image/head of seb7a.png'),
              Padding(
                padding: const EdgeInsets.only(top: 78),
                child: Transform.rotate(
                  angle: angle,
                  child: GestureDetector(
                    onTap: () {
                      onTap();
                    },
                    child: Image.asset('assets/image/body of seb7a.png'),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'عدد التسبيحات',
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 35,
          ),
          Container(
            alignment: Alignment.center,
            height: 70,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).primaryColor,
            ),
            child: Text(
              '$count',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.center,
            height: 50,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).primaryColor,
            ),
            child: Text(
              '${askar[index]}',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }

  onTap() {
    count++;
    if (count % 33 == 0) {
      index++;
    }
    if (index == askar.length) {
      index = 0;
      count = 0;
    }
    angle += 360 / 33;
    setState(() {});
  }
}
