


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quizz_app_canada/features/course/domain/entities/course_content_entity.dart';

part 'course_entity.freezed.dart';

@freezed
class CourseEntity with _$CourseEntity {
  const factory CourseEntity({
    required String id,
    required String title,
    String? description,
    String? level,
    String? thumbnailUrl,
    @Default([]) List<CourseContentEntity> contents,// fix content not showing in the course  details page.. 
  }) = _CourseEntity;
}