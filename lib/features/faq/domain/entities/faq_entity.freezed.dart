// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FaqEntity {
  String get id => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;
  bool get visible => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of FaqEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FaqEntityCopyWith<FaqEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqEntityCopyWith<$Res> {
  factory $FaqEntityCopyWith(FaqEntity value, $Res Function(FaqEntity) then) =
      _$FaqEntityCopyWithImpl<$Res, FaqEntity>;
  @useResult
  $Res call(
      {String id,
      String question,
      String answer,
      String? category,
      int? order,
      bool visible,
      DateTime? createdAt});
}

/// @nodoc
class _$FaqEntityCopyWithImpl<$Res, $Val extends FaqEntity>
    implements $FaqEntityCopyWith<$Res> {
  _$FaqEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FaqEntity
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
abstract class _$$FaqEntityImplCopyWith<$Res>
    implements $FaqEntityCopyWith<$Res> {
  factory _$$FaqEntityImplCopyWith(
          _$FaqEntityImpl value, $Res Function(_$FaqEntityImpl) then) =
      __$$FaqEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String question,
      String answer,
      String? category,
      int? order,
      bool visible,
      DateTime? createdAt});
}

/// @nodoc
class __$$FaqEntityImplCopyWithImpl<$Res>
    extends _$FaqEntityCopyWithImpl<$Res, _$FaqEntityImpl>
    implements _$$FaqEntityImplCopyWith<$Res> {
  __$$FaqEntityImplCopyWithImpl(
      _$FaqEntityImpl _value, $Res Function(_$FaqEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaqEntity
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
    return _then(_$FaqEntityImpl(
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

class _$FaqEntityImpl implements _FaqEntity {
  const _$FaqEntityImpl(
      {required this.id,
      required this.question,
      required this.answer,
      this.category,
      this.order,
      this.visible = true,
      this.createdAt});

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
  final DateTime? createdAt;

  @override
  String toString() {
    return 'FaqEntity(id: $id, question: $question, answer: $answer, category: $category, order: $order, visible: $visible, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqEntityImpl &&
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

  @override
  int get hashCode => Object.hash(
      runtimeType, id, question, answer, category, order, visible, createdAt);

  /// Create a copy of FaqEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqEntityImplCopyWith<_$FaqEntityImpl> get copyWith =>
      __$$FaqEntityImplCopyWithImpl<_$FaqEntityImpl>(this, _$identity);
}

abstract class _FaqEntity implements FaqEntity {
  const factory _FaqEntity(
      {required final String id,
      required final String question,
      required final String answer,
      final String? category,
      final int? order,
      final bool visible,
      final DateTime? createdAt}) = _$FaqEntityImpl;

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
  DateTime? get createdAt;

  /// Create a copy of FaqEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FaqEntityImplCopyWith<_$FaqEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
