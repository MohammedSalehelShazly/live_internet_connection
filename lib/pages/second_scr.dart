import 'package:flutter/material.dart';

import '../page_layout.dart';
import 'third_scr.dart';

class SecondScr extends StatelessWidget {
  const SecondScr({super.key});
  @override
  Widget build(BuildContext context) {
    return PageLayout(
      '2nd Page',
      btnLabel: 'To Third Screen',
      onPressed: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const ThirdScr())),
    );
  }
}
