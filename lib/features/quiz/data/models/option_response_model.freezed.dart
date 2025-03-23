// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'option_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OptionResponseModel _$OptionResponseModelFromJson(Map<String, dynamic> json) {
  return _OptionResponseModel.fromJson(json);
}

/// @nodoc
mixin _$OptionResponseModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;

  /// Serializes this OptionResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OptionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OptionResponseModelCopyWith<OptionResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionResponseModelCopyWith<$Res> {
  factory $OptionResponseModelCopyWith(
          OptionResponseModel value, $Res Function(OptionResponseModel) then) =
      _$OptionResponseModelCopyWithImpl<$Res, OptionResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id, @JsonKey(name: 'title') String title});
}

/// @nodoc
class _$OptionResponseModelCopyWithImpl<$Res, $Val extends OptionResponseModel>
    implements $OptionResponseModelCopyWith<$Res> {
  _$OptionResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OptionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OptionResponseModelImplCopyWith<$Res>
    implements $OptionResponseModelCopyWith<$Res> {
  factory _$$OptionResponseModelImplCopyWith(_$OptionResponseModelImpl value,
          $Res Function(_$OptionResponseModelImpl) then) =
      __$$OptionResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id, @JsonKey(name: 'title') String title});
}

/// @nodoc
class __$$OptionResponseModelImplCopyWithImpl<$Res>
    extends _$OptionResponseModelCopyWithImpl<$Res, _$OptionResponseModelImpl>
    implements _$$OptionResponseModelImplCopyWith<$Res> {
  __$$OptionResponseModelImplCopyWithImpl(_$OptionResponseModelImpl _value,
      $Res Function(_$OptionResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OptionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_$OptionResponseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OptionResponseModelImpl implements _OptionResponseModel {
  const _$OptionResponseModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'title') required this.title});

  factory _$OptionResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OptionResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'title')
  final String title;

  @override
  String toString() {
    return 'OptionResponseModel(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  /// Create a copy of OptionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionResponseModelImplCopyWith<_$OptionResponseModelImpl> get copyWith =>
      __$$OptionResponseModelImplCopyWithImpl<_$OptionResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OptionResponseModelImplToJson(
      this,
    );
  }
}

abstract class _OptionResponseModel implements OptionResponseModel {
  const factory _OptionResponseModel(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'title') required final String title}) =
      _$OptionResponseModelImpl;

  factory _OptionResponseModel.fromJson(Map<String, dynamic> json) =
      _$OptionResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'title')
  String get title;

  /// Create a copy of OptionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OptionResponseModelImplCopyWith<_$OptionResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
