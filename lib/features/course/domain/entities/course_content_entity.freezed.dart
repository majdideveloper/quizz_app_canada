// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_content_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CourseContentEntity {
  String get id => throw _privateConstructorUsedError;
  String get courseId => throw _privateConstructorUsedError;
  String get type =>
      throw _privateConstructorUsedError; // 'text', 'image', 'video'
  String get value => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;

  /// Create a copy of CourseContentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseContentEntityCopyWith<CourseContentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseContentEntityCopyWith<$Res> {
  factory $CourseContentEntityCopyWith(
          CourseContentEntity value, $Res Function(CourseContentEntity) then) =
      _$CourseContentEntityCopyWithImpl<$Res, CourseContentEntity>;
  @useResult
  $Res call(
      {String id, String courseId, String type, String value, int? order});
}

/// @nodoc
class _$CourseContentEntityCopyWithImpl<$Res, $Val extends CourseContentEntity>
    implements $CourseContentEntityCopyWith<$Res> {
  _$CourseContentEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseContentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? type = null,
    Object? value = null,
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseContentEntityImplCopyWith<$Res>
    implements $CourseContentEntityCopyWith<$Res> {
  factory _$$CourseContentEntityImplCopyWith(_$CourseContentEntityImpl value,
          $Res Function(_$CourseContentEntityImpl) then) =
      __$$CourseContentEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String courseId, String type, String value, int? order});
}

/// @nodoc
class __$$CourseContentEntityImplCopyWithImpl<$Res>
    extends _$CourseContentEntityCopyWithImpl<$Res, _$CourseContentEntityImpl>
    implements _$$CourseContentEntityImplCopyWith<$Res> {
  __$$CourseContentEntityImplCopyWithImpl(_$CourseContentEntityImpl _value,
      $Res Function(_$CourseContentEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseContentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? type = null,
    Object? value = null,
    Object? order = freezed,
  }) {
    return _then(_$CourseContentEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$CourseContentEntityImpl implements _CourseContentEntity {
  const _$CourseContentEntityImpl(
      {required this.id,
      required this.courseId,
      required this.type,
      required this.value,
      this.order});

  @override
  final String id;
  @override
  final String courseId;
  @override
  final String type;
// 'text', 'image', 'video'
  @override
  final String value;
  @override
  final int? order;

  @override
  String toString() {
    return 'CourseContentEntity(id: $id, courseId: $courseId, type: $type, value: $value, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseContentEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, courseId, type, value, order);

  /// Create a copy of CourseContentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseContentEntityImplCopyWith<_$CourseContentEntityImpl> get copyWith =>
      __$$CourseContentEntityImplCopyWithImpl<_$CourseContentEntityImpl>(
          this, _$identity);
}

abstract class _CourseContentEntity implements CourseContentEntity {
  const factory _CourseContentEntity(
      {required final String id,
      required final String courseId,
      required final String type,
      required final String value,
      final int? order}) = _$CourseContentEntityImpl;

  @override
  String get id;
  @override
  String get courseId;
  @override
  String get type; // 'text', 'image', 'video'
  @override
  String get value;
  @override
  int? get order;

  /// Create a copy of CourseContentEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseContentEntityImplCopyWith<_$CourseContentEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
