import 'package:flutter/material.dart';
import 'package:nlw_dev_quiz/home/widgets/appbar/app_bar.dart';
import 'package:nlw_dev_quiz/home/widgets/level-button/level_button_widget.dart';
import 'package:nlw_dev_quiz/home/widgets/quiz-card/quiz_card_widget.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 24),
            levelButtons(),
            SizedBox(height: 24),
            Expanded(
              child: GridView.count(
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                crossAxisCount: 2,
                children: [
                  QuizCardWidget(),
                  QuizCardWidget(),
                  QuizCardWidget(),
                  QuizCardWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget levelButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LevelButtonWidget(label: "Fácil"),
        LevelButtonWidget(label: "Médio"),
        LevelButtonWidget(label: "Difícil"),
        LevelButtonWidget(label: "Perito"),
      ],
    );
  }
}
