// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      quizzes: (json['quizzes'] as List<dynamic>)
          .map((e) => QuizModel.fromJson(
              RecordModel.fromJson(e as Map<String, dynamic>)))
          .toList(),
      courses: (json['courses'] as List<dynamic>)
          .map((e) => CourseModel.fromJson(
              RecordModel.fromJson(e as Map<String, dynamic>)))
          .toList(),
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'quizzes': instance.quizzes,
      'courses': instance.courses,
    };
