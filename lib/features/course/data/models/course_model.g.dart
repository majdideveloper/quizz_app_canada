// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseModelImpl _$$CourseModelImplFromJson(Map<String, dynamic> json) =>
    _$CourseModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      level: json['level'] as String?,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      contents: (json['contents'] as List<dynamic>?)
          ?.map((e) => CourseContentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CourseModelImplToJson(_$CourseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'level': instance.level,
      'thumbnailUrl': instance.thumbnailUrl,
      'contents': instance.contents,
    };
