import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:nlw_dev_quiz/shared/models/quiz_model.dart';
import 'package:nlw_dev_quiz/shared/models/user_model.dart';

class HomeRepository {
  Future<UserModel> getUser() async {
    final String response =
        await rootBundle.loadString("assets/database/user.json");
    final UserModel user = UserModel.fromJson(jsonDecode(response));
    return user;
  }

  Future<List<QuizModel>> getQuizzes() async {
    final String response =
        await rootBundle.loadString("assets/database/quizzes.json");
    final list = jsonDecode(response) as List;
    final List<QuizModel> quizzes =
        list.map((e) => QuizModel.fromJson(e)).toList();
    return quizzes;
  }
}
