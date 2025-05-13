import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/course_entity.dart';
import 'course_content_model.dart';

part 'course_model.freezed.dart';
part 'course_model.g.dart';

@freezed
class CourseModel with _$CourseModel {
  const CourseModel._();

  const factory CourseModel({
    required String id,
    required String title,
    String? description,
    String? level,
    String? thumbnailUrl,
    List<CourseContentModel>? contents,
  }) = _CourseModel;

  factory CourseModel.fromJson(Map<String, dynamic> json) =>
      _$CourseModelFromJson(json);

  factory CourseModel.fromSupabase(Map<String, dynamic> json) {
    return CourseModel(
      id: json['id'].toString(),
      title: json['title'] ?? '',
      description: json['description'],
      level: json['level'],
      thumbnailUrl: json['thumbnail_url'],
      contents: [], // You’ll load contents separately via a relation or second query
    );
  }

  CourseEntity toEntity() => CourseEntity(
        id: id,
        title: title,
        description: description,
        level: level,
        thumbnailUrl: thumbnailUrl,
        contents: contents?.map((e) => e.toEntity()).toList() ?? [],
      );
}
