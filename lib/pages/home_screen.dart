import 'package:flutter/cupertino.dart';

import '../page_layout.dart';
import 'second_scr.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return PageLayout(
      'Live Internet Connection',
      btnLabel: 'To Second Screen',
      onPressed: () => Navigator.of(context)
          .push(CupertinoPageRoute(builder: (context) => const SecondScr())),
    );
  }
}
