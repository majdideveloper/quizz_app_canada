// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FaqModel _$FaqModelFromJson(Map<String, dynamic> json) {
  return _FaqModel.fromJson(json);
}

/// @nodoc
mixin _$FaqModel {
  String get id => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;
  bool get visible => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this FaqModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FaqModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FaqModelCopyWith<FaqModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqModelCopyWith<$Res> {
  factory $FaqModelCopyWith(FaqModel value, $Res Function(FaqModel) then) =
      _$FaqModelCopyWithImpl<$Res, FaqModel>;
  @useResult
  $Res call(
      {String id,
      String question,
      String answer,
      String? category,
      int? order,
      bool visible,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class _$FaqModelCopyWithImpl<$Res, $Val extends FaqModel>
    implements $FaqModelCopyWith<$Res> {
  _$FaqModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FaqModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? answer = null,
    Object? category = freezed,
    Object? order = freezed,
    Object? visible = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FaqModelImplCopyWith<$Res>
    implements $FaqModelCopyWith<$Res> {
  factory _$$FaqModelImplCopyWith(
          _$FaqModelImpl value, $Res Function(_$FaqModelImpl) then) =
      __$$FaqModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String question,
      String answer,
      String? category,
      int? order,
      bool visible,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class __$$FaqModelImplCopyWithImpl<$Res>
    extends _$FaqModelCopyWithImpl<$Res, _$FaqModelImpl>
    implements _$$FaqModelImplCopyWith<$Res> {
  __$$FaqModelImplCopyWithImpl(
      _$FaqModelImpl _value, $Res Function(_$FaqModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaqModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? answer = null,
    Object? category = freezed,
    Object? order = freezed,
    Object? visible = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$FaqModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FaqModelImpl extends _FaqModel {
  const _$FaqModelImpl(
      {required this.id,
      required this.question,
      required this.answer,
      this.category,
      this.order,
      this.visible = true,
      @JsonKey(name: 'created_at') this.createdAt})
      : super._();

  factory _$FaqModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FaqModelImplFromJson(json);

  @override
  final String id;
  @override
  final String question;
  @override
  final String answer;
  @override
  final String? category;
  @override
  final int? order;
  @override
  @JsonKey()
  final bool visible;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'FaqModel(id: $id, question: $question, answer: $answer, category: $category, order: $order, visible: $visible, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.visible, visible) || other.visible == visible) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, question, answer, category, order, visible, createdAt);

  /// Create a copy of FaqModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqModelImplCopyWith<_$FaqModelImpl> get copyWith =>
      __$$FaqModelImplCopyWithImpl<_$FaqModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FaqModelImplToJson(
      this,
    );
  }
}

abstract class _FaqModel extends FaqModel {
  const factory _FaqModel(
      {required final String id,
      required final String question,
      required final String answer,
      final String? category,
      final int? order,
      final bool visible,
      @JsonKey(name: 'created_at') final DateTime? createdAt}) = _$FaqModelImpl;
  const _FaqModel._() : super._();

  factory _FaqModel.fromJson(Map<String, dynamic> json) =
      _$FaqModelImpl.fromJson;

  @override
  String get id;
  @override
  String get question;
  @override
  String get answer;
  @override
  String? get category;
  @override
  int? get order;
  @override
  bool get visible;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;

  /// Create a copy of FaqModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FaqModelImplCopyWith<_$FaqModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
