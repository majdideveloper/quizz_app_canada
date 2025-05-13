// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CourseEntity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  List<CourseContentEntity> get contents => throw _privateConstructorUsedError;

  /// Create a copy of CourseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseEntityCopyWith<CourseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseEntityCopyWith<$Res> {
  factory $CourseEntityCopyWith(
          CourseEntity value, $Res Function(CourseEntity) then) =
      _$CourseEntityCopyWithImpl<$Res, CourseEntity>;
  @useResult
  $Res call(
      {String id,
      String title,
      String? description,
      String? level,
      String? thumbnailUrl,
      List<CourseContentEntity> contents});
}

/// @nodoc
class _$CourseEntityCopyWithImpl<$Res, $Val extends CourseEntity>
    implements $CourseEntityCopyWith<$Res> {
  _$CourseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? level = freezed,
    Object? thumbnailUrl = freezed,
    Object? contents = null,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<CourseContentEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseEntityImplCopyWith<$Res>
    implements $CourseEntityCopyWith<$Res> {
  factory _$$CourseEntityImplCopyWith(
          _$CourseEntityImpl value, $Res Function(_$CourseEntityImpl) then) =
      __$$CourseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String? description,
      String? level,
      String? thumbnailUrl,
      List<CourseContentEntity> contents});
}

/// @nodoc
class __$$CourseEntityImplCopyWithImpl<$Res>
    extends _$CourseEntityCopyWithImpl<$Res, _$CourseEntityImpl>
    implements _$$CourseEntityImplCopyWith<$Res> {
  __$$CourseEntityImplCopyWithImpl(
      _$CourseEntityImpl _value, $Res Function(_$CourseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? level = freezed,
    Object? thumbnailUrl = freezed,
    Object? contents = null,
  }) {
    return _then(_$CourseEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      contents: null == contents
          ? _value._contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<CourseContentEntity>,
    ));
  }
}

/// @nodoc

class _$CourseEntityImpl implements _CourseEntity {
  const _$CourseEntityImpl(
      {required this.id,
      required this.title,
      this.description,
      this.level,
      this.thumbnailUrl,
      final List<CourseContentEntity> contents = const []})
      : _contents = contents;

  @override
  final String id;
  @override
  final String title;
  @override
  final String? description;
  @override
  final String? level;
  @override
  final String? thumbnailUrl;
  final List<CourseContentEntity> _contents;
  @override
  @JsonKey()
  List<CourseContentEntity> get contents {
    if (_contents is EqualUnmodifiableListView) return _contents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contents);
  }

  @override
  String toString() {
    return 'CourseEntity(id: $id, title: $title, description: $description, level: $level, thumbnailUrl: $thumbnailUrl, contents: $contents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            const DeepCollectionEquality().equals(other._contents, _contents));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, level,
      thumbnailUrl, const DeepCollectionEquality().hash(_contents));

  /// Create a copy of CourseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseEntityImplCopyWith<_$CourseEntityImpl> get copyWith =>
      __$$CourseEntityImplCopyWithImpl<_$CourseEntityImpl>(this, _$identity);
}

abstract class _CourseEntity implements CourseEntity {
  const factory _CourseEntity(
      {required final String id,
      required final String title,
      final String? description,
      final String? level,
      final String? thumbnailUrl,
      final List<CourseContentEntity> contents}) = _$CourseEntityImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  String? get description;
  @override
  String? get level;
  @override
  String? get thumbnailUrl;
  @override
  List<CourseContentEntity> get contents;

  /// Create a copy of CourseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseEntityImplCopyWith<_$CourseEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
