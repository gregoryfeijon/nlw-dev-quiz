// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuizModel _$QuizModelFromJson(Map<String, dynamic> json) {
  return QuizModel(
    title: json['title'] as String,
    questionAnswered: json['questionAnswered'] as int,
    imagem: json['imagem'] as String,
    level: _$enumDecode(_$LevelEnumMap, json['level']),
    questions: (json['questions'] as List<dynamic>)
        .map((e) => QuestionModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$QuizModelToJson(QuizModel instance) => <String, dynamic>{
      'title': instance.title,
      'questionAnswered': instance.questionAnswered,
      'imagem': instance.imagem,
      'level': _$LevelEnumMap[instance.level],
      'questions': instance.questions,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$LevelEnumMap = {
  Level.FACIL: 'FACIL',
  Level.MEDIO: 'MEDIO',
  Level.DIFICIL: 'DIFICIL',
  Level.PERITO: 'PERITO',
};
