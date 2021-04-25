import 'package:json_annotation/json_annotation.dart';

import 'package:nlw_dev_quiz/shared/models/Level.dart';
import 'package:nlw_dev_quiz/shared/models/question_model.dart';

part 'quiz_model.g.dart';

@JsonSerializable()
class QuizModel {
  final String title;
  final int questionAnswered;
  final String imagem;
  final Level level;
  final List<QuestionModel> questions;

  QuizModel({
    required this.title,
    this.questionAnswered = 0,
    required this.imagem,
    required this.level,
    required this.questions,
  });

  factory QuizModel.fromJson(Map<String, dynamic> json) =>
      _$QuizModelFromJson(json);

  static QuizModel fromJsonResponse(Object? json) =>
      _$QuizModelFromJson(json as Map<String, dynamic>);

  Map<String, dynamic> toJson() => _$QuizModelToJson(this);
}
