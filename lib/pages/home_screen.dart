import 'package:flutter/material.dart';

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
          .push(MaterialPageRoute(builder: (context) => const SecondScr())),
    );
  }
}
