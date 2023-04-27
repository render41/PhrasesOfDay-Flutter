import 'package:flutter/material.dart';
import 'package:phrases_of_day/view/start_page.dart';

class BasePage extends StatelessWidget {
  const BasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Phrase of Day',
      home: StartPage(),
    );
  }
}
