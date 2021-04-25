import 'package:flutter/material.dart';
import 'package:nlw_dev_quiz/core/app_colors.dart';
import 'package:nlw_dev_quiz/core/app_images.dart';
import 'package:nlw_dev_quiz/home/home_controller.dart';
import 'package:nlw_dev_quiz/home/home_state.dart';
import 'package:nlw_dev_quiz/home/widgets/appbar/app_bar.dart';
import 'package:nlw_dev_quiz/home/widgets/level-button/level_button_widget.dart';
import 'package:nlw_dev_quiz/home/widgets/quiz-card/quiz_card_widget.dart';
import 'package:nlw_dev_quiz/shared/models/Level.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = HomeController();

  @override
  void initState() {
    controller.getUserAndQuizzes();
    controller.stateNotifier.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (controller.state == HomeState.success) {
      return Scaffold(
        appBar: AppBarWidget(user: controller.user),
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
                  children: controller.quizzes
                      .map(
                        (quiz) => QuizCardWidget(
                          title: quiz.title,
                          completed:
                              "${quiz.questionAnswered}/${quiz.questions.length}",
                          image: AppImages.blocks,
                          percent:
                              quiz.questionAnswered / quiz.questions.length,
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.darkGreen),
          ),
        ),
      );
    }
  }

  Widget levelButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LevelButtonWidget(label: Level.FACIL.textoTela),
        LevelButtonWidget(label: Level.MEDIO.textoTela),
        LevelButtonWidget(label: Level.DIFICIL.textoTela),
        LevelButtonWidget(label: Level.PERITO.textoTela),
      ],
    );
  }
}
