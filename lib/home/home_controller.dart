import 'package:flutter/cupertino.dart';
import 'package:nlw_dev_quiz/home/home_repository.dart';
import 'package:nlw_dev_quiz/home/home_state.dart';
import 'package:nlw_dev_quiz/shared/models/quiz_model.dart';
import 'package:nlw_dev_quiz/shared/models/user_model.dart';

class HomeController {
  final ValueNotifier<HomeState> stateNotifier =
      ValueNotifier<HomeState>(HomeState.empty);

  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  late UserModel user;
  late List<QuizModel> quizzes;

  final HomeRepository repository = HomeRepository();

  void getUserAndQuizzes() async {
    state = HomeState.loading;
    this.user = await repository.getUser();
    this.quizzes = await repository.getQuizzes();
    state = HomeState.success;
  }
}
