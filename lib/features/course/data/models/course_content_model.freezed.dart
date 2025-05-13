// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_content_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourseContentModel _$CourseContentModelFromJson(Map<String, dynamic> json) {
  return _CourseContentModel.fromJson(json);
}

/// @nodoc
mixin _$CourseContentModel {
  String get id => throw _privateConstructorUsedError;
  String get courseId => throw _privateConstructorUsedError;
  String get type =>
      throw _privateConstructorUsedError; // 'text', 'image', 'video'
  String get value => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;

  /// Serializes this CourseContentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseContentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseContentModelCopyWith<CourseContentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseContentModelCopyWith<$Res> {
  factory $CourseContentModelCopyWith(
          CourseContentModel value, $Res Function(CourseContentModel) then) =
      _$CourseContentModelCopyWithImpl<$Res, CourseContentModel>;
  @useResult
  $Res call({String id, String courseId, String type, String value, int order});
}

/// @nodoc
class _$CourseContentModelCopyWithImpl<$Res, $Val extends CourseContentModel>
    implements $CourseContentModelCopyWith<$Res> {
  _$CourseContentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseContentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? type = null,
    Object? value = null,
    Object? order = null,
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
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseContentModelImplCopyWith<$Res>
    implements $CourseContentModelCopyWith<$Res> {
  factory _$$CourseContentModelImplCopyWith(_$CourseContentModelImpl value,
          $Res Function(_$CourseContentModelImpl) then) =
      __$$CourseContentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String courseId, String type, String value, int order});
}

/// @nodoc
class __$$CourseContentModelImplCopyWithImpl<$Res>
    extends _$CourseContentModelCopyWithImpl<$Res, _$CourseContentModelImpl>
    implements _$$CourseContentModelImplCopyWith<$Res> {
  __$$CourseContentModelImplCopyWithImpl(_$CourseContentModelImpl _value,
      $Res Function(_$CourseContentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseContentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? type = null,
    Object? value = null,
    Object? order = null,
  }) {
    return _then(_$CourseContentModelImpl(
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
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseContentModelImpl extends _CourseContentModel {
  const _$CourseContentModelImpl(
      {required this.id,
      required this.courseId,
      required this.type,
      required this.value,
      required this.order})
      : super._();

  factory _$CourseContentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseContentModelImplFromJson(json);

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
  final int order;

  @override
  String toString() {
    return 'CourseContentModel(id: $id, courseId: $courseId, type: $type, value: $value, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseContentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, courseId, type, value, order);

  /// Create a copy of CourseContentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseContentModelImplCopyWith<_$CourseContentModelImpl> get copyWith =>
      __$$CourseContentModelImplCopyWithImpl<_$CourseContentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseContentModelImplToJson(
      this,
    );
  }
}

abstract class _CourseContentModel extends CourseContentModel {
  const factory _CourseContentModel(
      {required final String id,
      required final String courseId,
      required final String type,
      required final String value,
      required final int order}) = _$CourseContentModelImpl;
  const _CourseContentModel._() : super._();

  factory _CourseContentModel.fromJson(Map<String, dynamic> json) =
      _$CourseContentModelImpl.fromJson;

  @override
  String get id;
  @override
  String get courseId;
  @override
  String get type; // 'text', 'image', 'video'
  @override
  String get value;
  @override
  int get order;

  /// Create a copy of CourseContentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseContentModelImplCopyWith<_$CourseContentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
