import 'package:json_annotation/json_annotation.dart';
import 'package:nlw_dev_quiz/shared/models/answer_model.dart';

part 'question_model.g.dart';

@JsonSerializable()
class QuestionModel {
  final String title;
  final List<AnswerModel> answers;

  QuestionModel({
    required this.title,
    required this.answers,
  }) : assert(answers.length == 4 &&
            answers.singleWhere((answer) => answer.isRight).isRight);

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionModelToJson(this);
}
