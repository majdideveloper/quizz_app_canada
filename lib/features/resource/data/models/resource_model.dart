




import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/resource_entity.dart';

part 'resource_model.freezed.dart';
part 'resource_model.g.dart';

@freezed
class ResourceModel with _$ResourceModel {
  const ResourceModel._();

  const factory ResourceModel({
    required String id,
    required String title,
    required String description,
    required String type,
    required String url,
    String? thumbnailUrl,
    @Default(false) bool isNew,
    DateTime? createdAt,
  }) = _ResourceModel;

  factory ResourceModel.fromJson(Map<String, dynamic> json) => _$ResourceModelFromJson(json);

  factory ResourceModel.fromSupabase(Map<String, dynamic> json) => ResourceModel(
        id: json['id'],
        title: json['title'],
        description: json['description'],
        type: json['type'],
        url: json['url'],
        thumbnailUrl: json['thumbnail_url'],
        isNew: json['is_new'] ?? false,
        createdAt: DateTime.tryParse(json['created_at'] ?? ''),
      );

  ResourceEntity toEntity() => ResourceEntity(
        id: id,
        title: title,
        description: description,
        type: type,
        url: url,
        thumbnailUrl: thumbnailUrl,
        isNew: isNew,
        createdAt: createdAt,
      );
}