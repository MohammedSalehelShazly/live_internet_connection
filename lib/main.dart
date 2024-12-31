import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'no_internet_widget.dart';
import 'pages/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // we can use [Overlay] instead of Stack, If there are more complex children.
      // Overlay(initialEntries: [
      //   OverlayEntry(builder: (context) => child!),
      //   OverlayEntry(builder: (context) => StreamBuilder ... ),
      // ]);
      builder: (context, child) => Stack(
        children: [
          // child here represents the Route Widget: the current app screen content.
          if (child != null) child,

          StreamBuilder<InternetConnectionStatus>(
              stream: InternetConnectionChecker.instance.onStatusChange,
              builder: (context, snapshot) {
                final isConnected =
                    snapshot.data == InternetConnectionStatus.connected;
                if (isConnected) return const SizedBox();
                return const NoInternetWidget();
              }),
        ],
      ),
      home: const HomeScreen(),
    );
  }
}
