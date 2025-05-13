


import 'package:freezed_annotation/freezed_annotation.dart';

part 'resource_entity.freezed.dart';

@freezed
class ResourceEntity with _$ResourceEntity {
  const factory ResourceEntity({
    required String id,
    required String title,
    required String description,
    required String type, // 'pdf', 'link', 'image', 'video'
    required String url,
    String? thumbnailUrl,
    @Default(false) bool isNew,
    DateTime? createdAt,
  }) = _ResourceEntity;
}