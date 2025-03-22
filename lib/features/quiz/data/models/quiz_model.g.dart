// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizModelImpl _$$QuizModelImplFromJson(Map<String, dynamic> json) =>
    _$QuizModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      questions:
          (json['questions'] as List<dynamic>?)
              ?.map(
                (e) => QuestionModel.fromJson(
                  RecordModel.fromJson(e as Map<String, dynamic>),
                ),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$QuizModelImplToJson(_$QuizModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'questions': instance.questions,
    };
