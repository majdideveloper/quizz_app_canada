import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quizz_app_canada/features/blog/domain/entities/blog_entity.dart';

part 'blog_model.freezed.dart';
part 'blog_model.g.dart';

@freezed
class BlogModel with _$BlogModel {
  const BlogModel._(); // Allow adding methods

  const factory BlogModel({
    required String id,
    required String title,
    required String post,
    String? imagePost,
  }) = _BlogModel;

  // Factory constructor to create from PocketBase JSON
  factory BlogModel.fromPocketBase(Map<String, dynamic> json) {
    return BlogModel(
      id: json['id'],
      title: json['title'],
      post: json['post'],
      imagePost: json['image_post'],
    );
  }

  // Factory constructor to create from Supabase JSON
  factory BlogModel.fromSupabase(Map<String, dynamic> json) {
    return BlogModel(
      id: json['id'].toString(),
      title: json['title'] as String,
      post: json['post'] as String,
      imagePost: json['imagePost'] ?? json['image_post'],
      //Supabase uses snake_case by default (e.g. image_post), but depending on how the table was set up, it may return camelCase (imagePost). The ?? fallback handles both.
    );
  }

  // JSON serialization
  factory BlogModel.fromJson(Map<String, dynamic> json) =>
      _$BlogModelFromJson(json);

  // Convert to domain entity
  BlogEntity toEntity() => BlogEntity(
        id: id,
        title: title,
        post: post,
        imagePost: imagePost,
      );
}
