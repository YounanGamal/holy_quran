import 'package:flutter/material.dart';

class SebhaTabWidget extends StatelessWidget {
  static const String rounteName = 'SebhaTabWidget';

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset('assets/image/head of seb7a.png'),
              SizedBox(height: 100,),
              Image.asset('assets/image/body of seb7a.png')
            ],
          ),
          // Expanded(child: Image.asset('assets/image/head of seb7a.png')),
          // Container(
          //     child: Expanded(
          //         child: Image.asset('assets/image/body of seb7a.png'))),
          Text('عدد التسبيحات'),
          Container(
            alignment: Alignment.center,
            height: 70,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).primaryColor,
            ),
            child: Text(
              '20',
              style: Theme.of(context).textTheme.titleMedium,
            ),
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
              'سبحان الله',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}
