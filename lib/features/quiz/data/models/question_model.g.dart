// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionModelImpl _$$QuestionModelImplFromJson(Map<String, dynamic> json) =>
    _$QuestionModelImpl(
      id: json['id'] as String,
      question: json['question'] as String,
      options:
          (json['options'] as List<dynamic>?)
              ?.map(
                (e) => OptionResponseModel.fromJson(
                  RecordModel.fromJson(e as Map<String, dynamic>),
                ),
              )
              .toList() ??
          const [],
      correctOption: OptionResponseModel.fromJson(
        RecordModel.fromJson(json['correctOption'] as Map<String, dynamic>),
      ),
    );

Map<String, dynamic> _$$QuestionModelImplToJson(_$QuestionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'options': instance.options,
      'correctOption': instance.correctOption,
    };
