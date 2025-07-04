// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionModel _$QuestionModelFromJson(Map<String, dynamic> json) {
  return _QuestionModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'hintWrongAnswer')
  String get hintWrongAnswer => throw _privateConstructorUsedError;
  @JsonKey(name: 'options')
  List<OptionResponseModel> get options => throw _privateConstructorUsedError;
  @JsonKey(name: 'correctOptionIndex')
  int get correctOptionIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'imageQuestion')
  String? get imageQuestion => throw _privateConstructorUsedError;
  @JsonKey(name: 'categoryId')
  String? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'difficulty')
  String? get difficulty => throw _privateConstructorUsedError;

  /// Serializes this QuestionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionModelCopyWith<QuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionModelCopyWith<$Res> {
  factory $QuestionModelCopyWith(
          QuestionModel value, $Res Function(QuestionModel) then) =
      _$QuestionModelCopyWithImpl<$Res, QuestionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'hintWrongAnswer') String hintWrongAnswer,
      @JsonKey(name: 'options') List<OptionResponseModel> options,
      @JsonKey(name: 'correctOptionIndex') int correctOptionIndex,
      @JsonKey(name: 'imageQuestion') String? imageQuestion,
      @JsonKey(name: 'categoryId') String? categoryId,
      @JsonKey(name: 'difficulty') String? difficulty});
}

/// @nodoc
class _$QuestionModelCopyWithImpl<$Res, $Val extends QuestionModel>
    implements $QuestionModelCopyWith<$Res> {
  _$QuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? hintWrongAnswer = null,
    Object? options = null,
    Object? correctOptionIndex = null,
    Object? imageQuestion = freezed,
    Object? categoryId = freezed,
    Object? difficulty = freezed,
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
      hintWrongAnswer: null == hintWrongAnswer
          ? _value.hintWrongAnswer
          : hintWrongAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<OptionResponseModel>,
      correctOptionIndex: null == correctOptionIndex
          ? _value.correctOptionIndex
          : correctOptionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      imageQuestion: freezed == imageQuestion
          ? _value.imageQuestion
          : imageQuestion // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      difficulty: freezed == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionModelImplCopyWith<$Res>
    implements $QuestionModelCopyWith<$Res> {
  factory _$$QuestionModelImplCopyWith(
          _$QuestionModelImpl value, $Res Function(_$QuestionModelImpl) then) =
      __$$QuestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'hintWrongAnswer') String hintWrongAnswer,
      @JsonKey(name: 'options') List<OptionResponseModel> options,
      @JsonKey(name: 'correctOptionIndex') int correctOptionIndex,
      @JsonKey(name: 'imageQuestion') String? imageQuestion,
      @JsonKey(name: 'categoryId') String? categoryId,
      @JsonKey(name: 'difficulty') String? difficulty});
}

/// @nodoc
class __$$QuestionModelImplCopyWithImpl<$Res>
    extends _$QuestionModelCopyWithImpl<$Res, _$QuestionModelImpl>
    implements _$$QuestionModelImplCopyWith<$Res> {
  __$$QuestionModelImplCopyWithImpl(
      _$QuestionModelImpl _value, $Res Function(_$QuestionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? hintWrongAnswer = null,
    Object? options = null,
    Object? correctOptionIndex = null,
    Object? imageQuestion = freezed,
    Object? categoryId = freezed,
    Object? difficulty = freezed,
  }) {
    return _then(_$QuestionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      hintWrongAnswer: null == hintWrongAnswer
          ? _value.hintWrongAnswer
          : hintWrongAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<OptionResponseModel>,
      correctOptionIndex: null == correctOptionIndex
          ? _value.correctOptionIndex
          : correctOptionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      imageQuestion: freezed == imageQuestion
          ? _value.imageQuestion
          : imageQuestion // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      difficulty: freezed == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionModelImpl implements _QuestionModel {
  const _$QuestionModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'hintWrongAnswer') required this.hintWrongAnswer,
      @JsonKey(name: 'options')
      required final List<OptionResponseModel> options,
      @JsonKey(name: 'correctOptionIndex') required this.correctOptionIndex,
      @JsonKey(name: 'imageQuestion') this.imageQuestion,
      @JsonKey(name: 'categoryId') this.categoryId,
      @JsonKey(name: 'difficulty') this.difficulty})
      : _options = options;

  factory _$QuestionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'hintWrongAnswer')
  final String hintWrongAnswer;
  final List<OptionResponseModel> _options;
  @override
  @JsonKey(name: 'options')
  List<OptionResponseModel> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  @JsonKey(name: 'correctOptionIndex')
  final int correctOptionIndex;
  @override
  @JsonKey(name: 'imageQuestion')
  final String? imageQuestion;
  @override
  @JsonKey(name: 'categoryId')
  final String? categoryId;
  @override
  @JsonKey(name: 'difficulty')
  final String? difficulty;

  @override
  String toString() {
    return 'QuestionModel(id: $id, title: $title, hintWrongAnswer: $hintWrongAnswer, options: $options, correctOptionIndex: $correctOptionIndex, imageQuestion: $imageQuestion, categoryId: $categoryId, difficulty: $difficulty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.hintWrongAnswer, hintWrongAnswer) ||
                other.hintWrongAnswer == hintWrongAnswer) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.correctOptionIndex, correctOptionIndex) ||
                other.correctOptionIndex == correctOptionIndex) &&
            (identical(other.imageQuestion, imageQuestion) ||
                other.imageQuestion == imageQuestion) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      hintWrongAnswer,
      const DeepCollectionEquality().hash(_options),
      correctOptionIndex,
      imageQuestion,
      categoryId,
      difficulty);

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionModelImplCopyWith<_$QuestionModelImpl> get copyWith =>
      __$$QuestionModelImplCopyWithImpl<_$QuestionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionModel implements QuestionModel {
  const factory _QuestionModel(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'title') required final String title,
      @JsonKey(name: 'hintWrongAnswer') required final String hintWrongAnswer,
      @JsonKey(name: 'options')
      required final List<OptionResponseModel> options,
      @JsonKey(name: 'correctOptionIndex')
      required final int correctOptionIndex,
      @JsonKey(name: 'imageQuestion') final String? imageQuestion,
      @JsonKey(name: 'categoryId') final String? categoryId,
      @JsonKey(name: 'difficulty')
      final String? difficulty}) = _$QuestionModelImpl;

  factory _QuestionModel.fromJson(Map<String, dynamic> json) =
      _$QuestionModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'hintWrongAnswer')
  String get hintWrongAnswer;
  @override
  @JsonKey(name: 'options')
  List<OptionResponseModel> get options;
  @override
  @JsonKey(name: 'correctOptionIndex')
  int get correctOptionIndex;
  @override
  @JsonKey(name: 'imageQuestion')
  String? get imageQuestion;
  @override
  @JsonKey(name: 'categoryId')
  String? get categoryId;
  @override
  @JsonKey(name: 'difficulty')
  String? get difficulty;

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionModelImplCopyWith<_$QuestionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
