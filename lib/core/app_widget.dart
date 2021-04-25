import 'package:flutter/material.dart';
import 'package:nlw_dev_quiz/home/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DevQuiz",
      home: HomePage(),
      // home: ChallengePage(),
    );
  }
}
