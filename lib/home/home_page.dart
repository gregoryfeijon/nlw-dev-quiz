import 'package:flutter/material.dart';
import 'package:nlw_dev_quiz/home/widgets/appbar/app_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApppBarWidget(),
    );
  }
}
