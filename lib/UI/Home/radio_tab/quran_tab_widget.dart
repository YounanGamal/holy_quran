import 'package:flutter/material.dart';

class RadioTabWidget extends StatelessWidget {
  static const String rounteName = 'RadioTabWidget';

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
              'assets/image/551-5517026_radio-vector-png-old-radio-png-vector-transparent.png'),
          const SizedBox(
            height: 55,
          ),
          const Text('إذاعة القرآن الكريم'),
          const SizedBox(
            height: 55,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.skip_previous,
                size: 45,
              ),
              Icon(
                Icons.play_arrow,
                size: 45,
              ),
              Icon(
                Icons.skip_next,
                size: 40,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
