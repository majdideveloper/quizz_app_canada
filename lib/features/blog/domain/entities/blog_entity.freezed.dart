// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BlogEntity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get post => throw _privateConstructorUsedError;
  String? get imagePost => throw _privateConstructorUsedError;

  /// Create a copy of BlogEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlogEntityCopyWith<BlogEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogEntityCopyWith<$Res> {
  factory $BlogEntityCopyWith(
          BlogEntity value, $Res Function(BlogEntity) then) =
      _$BlogEntityCopyWithImpl<$Res, BlogEntity>;
  @useResult
  $Res call({String id, String title, String post, String? imagePost});
}

/// @nodoc
class _$BlogEntityCopyWithImpl<$Res, $Val extends BlogEntity>
    implements $BlogEntityCopyWith<$Res> {
  _$BlogEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlogEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? post = null,
    Object? imagePost = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as String,
      imagePost: freezed == imagePost
          ? _value.imagePost
          : imagePost // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlogEntityImplCopyWith<$Res>
    implements $BlogEntityCopyWith<$Res> {
  factory _$$BlogEntityImplCopyWith(
          _$BlogEntityImpl value, $Res Function(_$BlogEntityImpl) then) =
      __$$BlogEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String post, String? imagePost});
}

/// @nodoc
class __$$BlogEntityImplCopyWithImpl<$Res>
    extends _$BlogEntityCopyWithImpl<$Res, _$BlogEntityImpl>
    implements _$$BlogEntityImplCopyWith<$Res> {
  __$$BlogEntityImplCopyWithImpl(
      _$BlogEntityImpl _value, $Res Function(_$BlogEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlogEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? post = null,
    Object? imagePost = freezed,
  }) {
    return _then(_$BlogEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as String,
      imagePost: freezed == imagePost
          ? _value.imagePost
          : imagePost // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BlogEntityImpl implements _BlogEntity {
  const _$BlogEntityImpl(
      {required this.id,
      required this.title,
      required this.post,
      this.imagePost});

  @override
  final String id;
  @override
  final String title;
  @override
  final String post;
  @override
  final String? imagePost;

  @override
  String toString() {
    return 'BlogEntity(id: $id, title: $title, post: $post, imagePost: $imagePost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.post, post) || other.post == post) &&
            (identical(other.imagePost, imagePost) ||
                other.imagePost == imagePost));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, post, imagePost);

  /// Create a copy of BlogEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogEntityImplCopyWith<_$BlogEntityImpl> get copyWith =>
      __$$BlogEntityImplCopyWithImpl<_$BlogEntityImpl>(this, _$identity);
}

abstract class _BlogEntity implements BlogEntity {
  const factory _BlogEntity(
      {required final String id,
      required final String title,
      required final String post,
      final String? imagePost}) = _$BlogEntityImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  String get post;
  @override
  String? get imagePost;

  /// Create a copy of BlogEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlogEntityImplCopyWith<_$BlogEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
