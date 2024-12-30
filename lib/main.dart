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
      builder: (context, child) {
        // we can use [Overlay] instead of Stack, If there are more complex children.
        // Overlay(initialEntries: [
        //   OverlayEntry(builder: (context) => child!),
        //   OverlayEntry(builder: (context) => StreamBuilder ... ),
        // ]);
        return Stack(
          children: [
            if (child != null) child,
            StreamBuilder<InternetConnectionStatus>(
                stream: InternetConnectionChecker.instance.onStatusChange,
                builder: (context, snapshot) {
                  final isDisconnected =
                      snapshot.data == InternetConnectionStatus.disconnected;
                  if (!isDisconnected) return const SizedBox();
                  return const NoInternetWidget();
                }),
          ],
        );
      },
      home: const HomeScreen(),
    );
  }
}
