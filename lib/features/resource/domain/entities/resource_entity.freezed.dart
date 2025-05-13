// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resource_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResourceEntity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get type =>
      throw _privateConstructorUsedError; // 'pdf', 'link', 'image', 'video'
  String get url => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  bool get isNew => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of ResourceEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResourceEntityCopyWith<ResourceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceEntityCopyWith<$Res> {
  factory $ResourceEntityCopyWith(
          ResourceEntity value, $Res Function(ResourceEntity) then) =
      _$ResourceEntityCopyWithImpl<$Res, ResourceEntity>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String type,
      String url,
      String? thumbnailUrl,
      bool isNew,
      DateTime? createdAt});
}

/// @nodoc
class _$ResourceEntityCopyWithImpl<$Res, $Val extends ResourceEntity>
    implements $ResourceEntityCopyWith<$Res> {
  _$ResourceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResourceEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? url = null,
    Object? thumbnailUrl = freezed,
    Object? isNew = null,
    Object? createdAt = freezed,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isNew: null == isNew
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResourceEntityImplCopyWith<$Res>
    implements $ResourceEntityCopyWith<$Res> {
  factory _$$ResourceEntityImplCopyWith(_$ResourceEntityImpl value,
          $Res Function(_$ResourceEntityImpl) then) =
      __$$ResourceEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String type,
      String url,
      String? thumbnailUrl,
      bool isNew,
      DateTime? createdAt});
}

/// @nodoc
class __$$ResourceEntityImplCopyWithImpl<$Res>
    extends _$ResourceEntityCopyWithImpl<$Res, _$ResourceEntityImpl>
    implements _$$ResourceEntityImplCopyWith<$Res> {
  __$$ResourceEntityImplCopyWithImpl(
      _$ResourceEntityImpl _value, $Res Function(_$ResourceEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResourceEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? url = null,
    Object? thumbnailUrl = freezed,
    Object? isNew = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$ResourceEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isNew: null == isNew
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$ResourceEntityImpl implements _ResourceEntity {
  const _$ResourceEntityImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.type,
      required this.url,
      this.thumbnailUrl,
      this.isNew = false,
      this.createdAt});

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String type;
// 'pdf', 'link', 'image', 'video'
  @override
  final String url;
  @override
  final String? thumbnailUrl;
  @override
  @JsonKey()
  final bool isNew;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'ResourceEntity(id: $id, title: $title, description: $description, type: $type, url: $url, thumbnailUrl: $thumbnailUrl, isNew: $isNew, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourceEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.isNew, isNew) || other.isNew == isNew) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, type,
      url, thumbnailUrl, isNew, createdAt);

  /// Create a copy of ResourceEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourceEntityImplCopyWith<_$ResourceEntityImpl> get copyWith =>
      __$$ResourceEntityImplCopyWithImpl<_$ResourceEntityImpl>(
          this, _$identity);
}

abstract class _ResourceEntity implements ResourceEntity {
  const factory _ResourceEntity(
      {required final String id,
      required final String title,
      required final String description,
      required final String type,
      required final String url,
      final String? thumbnailUrl,
      final bool isNew,
      final DateTime? createdAt}) = _$ResourceEntityImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get type; // 'pdf', 'link', 'image', 'video'
  @override
  String get url;
  @override
  String? get thumbnailUrl;
  @override
  bool get isNew;
  @override
  DateTime? get createdAt;

  /// Create a copy of ResourceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResourceEntityImplCopyWith<_$ResourceEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
