import 'package:flutter/material.dart';

class PageLayout extends StatelessWidget {
  const PageLayout(this.title,
      {super.key, required this.btnLabel, required this.onPressed});
  final String title, btnLabel;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text(title), backgroundColor: Colors.lightBlueAccent),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: ElevatedButton(
            style: ButtonStyle(
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    side: const BorderSide(),
                    borderRadius: BorderRadius.circular(20)))),
            onPressed: onPressed,
            child: Text(btnLabel, style: const TextStyle(fontSize: 20)),
          ),
        ),
      ),
    );
  }
}
