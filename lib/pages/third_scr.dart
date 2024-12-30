import 'package:flutter/material.dart';

import '../page_layout.dart';
import 'home_screen.dart';

class ThirdScr extends StatelessWidget {
  const ThirdScr({super.key});
  @override
  Widget build(BuildContext context) {
    return PageLayout(
      '3rd Page',
      btnLabel: 'Back To Home Screen',
      onPressed: () => Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
        (_) => false,
      ),
    );
  }
}
