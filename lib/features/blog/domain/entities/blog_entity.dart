

import 'package:freezed_annotation/freezed_annotation.dart';

part 'blog_entity.freezed.dart';

@freezed
class BlogEntity with _$BlogEntity {
  const factory BlogEntity({
    required String id,
    required String title,
    required String post,
    String? imagePost,

  }) = _BlogEntity;
}