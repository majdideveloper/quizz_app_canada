// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CourseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CourseEntity> courses) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CourseEntity> courses)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CourseEntity> courses)? loaded,
    TResult Function(String message)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CourseInitial value) initial,
    required TResult Function(CourseLoading value) loading,
    required TResult Function(CourseLoaded value) loaded,
    required TResult Function(CourseSuccess value) success,
    required TResult Function(CourseFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CourseInitial value)? initial,
    TResult? Function(CourseLoading value)? loading,
    TResult? Function(CourseLoaded value)? loaded,
    TResult? Function(CourseSuccess value)? success,
    TResult? Function(CourseFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CourseInitial value)? initial,
    TResult Function(CourseLoading value)? loading,
    TResult Function(CourseLoaded value)? loaded,
    TResult Function(CourseSuccess value)? success,
    TResult Function(CourseFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseStateCopyWith<$Res> {
  factory $CourseStateCopyWith(
          CourseState value, $Res Function(CourseState) then) =
      _$CourseStateCopyWithImpl<$Res, CourseState>;
}

/// @nodoc
class _$CourseStateCopyWithImpl<$Res, $Val extends CourseState>
    implements $CourseStateCopyWith<$Res> {
  _$CourseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CourseInitialImplCopyWith<$Res> {
  factory _$$CourseInitialImplCopyWith(
          _$CourseInitialImpl value, $Res Function(_$CourseInitialImpl) then) =
      __$$CourseInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CourseInitialImplCopyWithImpl<$Res>
    extends _$CourseStateCopyWithImpl<$Res, _$CourseInitialImpl>
    implements _$$CourseInitialImplCopyWith<$Res> {
  __$$CourseInitialImplCopyWithImpl(
      _$CourseInitialImpl _value, $Res Function(_$CourseInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CourseInitialImpl implements CourseInitial {
  const _$CourseInitialImpl();

  @override
  String toString() {
    return 'CourseState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CourseInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CourseEntity> courses) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CourseEntity> courses)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CourseEntity> courses)? loaded,
    TResult Function(String message)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CourseInitial value) initial,
    required TResult Function(CourseLoading value) loading,
    required TResult Function(CourseLoaded value) loaded,
    required TResult Function(CourseSuccess value) success,
    required TResult Function(CourseFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CourseInitial value)? initial,
    TResult? Function(CourseLoading value)? loading,
    TResult? Function(CourseLoaded value)? loaded,
    TResult? Function(CourseSuccess value)? success,
    TResult? Function(CourseFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CourseInitial value)? initial,
    TResult Function(CourseLoading value)? loading,
    TResult Function(CourseLoaded value)? loaded,
    TResult Function(CourseSuccess value)? success,
    TResult Function(CourseFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CourseInitial implements CourseState {
  const factory CourseInitial() = _$CourseInitialImpl;
}

/// @nodoc
abstract class _$$CourseLoadingImplCopyWith<$Res> {
  factory _$$CourseLoadingImplCopyWith(
          _$CourseLoadingImpl value, $Res Function(_$CourseLoadingImpl) then) =
      __$$CourseLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CourseLoadingImplCopyWithImpl<$Res>
    extends _$CourseStateCopyWithImpl<$Res, _$CourseLoadingImpl>
    implements _$$CourseLoadingImplCopyWith<$Res> {
  __$$CourseLoadingImplCopyWithImpl(
      _$CourseLoadingImpl _value, $Res Function(_$CourseLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CourseLoadingImpl implements CourseLoading {
  const _$CourseLoadingImpl();

  @override
  String toString() {
    return 'CourseState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CourseLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CourseEntity> courses) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CourseEntity> courses)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CourseEntity> courses)? loaded,
    TResult Function(String message)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CourseInitial value) initial,
    required TResult Function(CourseLoading value) loading,
    required TResult Function(CourseLoaded value) loaded,
    required TResult Function(CourseSuccess value) success,
    required TResult Function(CourseFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CourseInitial value)? initial,
    TResult? Function(CourseLoading value)? loading,
    TResult? Function(CourseLoaded value)? loaded,
    TResult? Function(CourseSuccess value)? success,
    TResult? Function(CourseFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CourseInitial value)? initial,
    TResult Function(CourseLoading value)? loading,
    TResult Function(CourseLoaded value)? loaded,
    TResult Function(CourseSuccess value)? success,
    TResult Function(CourseFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CourseLoading implements CourseState {
  const factory CourseLoading() = _$CourseLoadingImpl;
}

/// @nodoc
abstract class _$$CourseLoadedImplCopyWith<$Res> {
  factory _$$CourseLoadedImplCopyWith(
          _$CourseLoadedImpl value, $Res Function(_$CourseLoadedImpl) then) =
      __$$CourseLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CourseEntity> courses});
}

/// @nodoc
class __$$CourseLoadedImplCopyWithImpl<$Res>
    extends _$CourseStateCopyWithImpl<$Res, _$CourseLoadedImpl>
    implements _$$CourseLoadedImplCopyWith<$Res> {
  __$$CourseLoadedImplCopyWithImpl(
      _$CourseLoadedImpl _value, $Res Function(_$CourseLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
  }) {
    return _then(_$CourseLoadedImpl(
      null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseEntity>,
    ));
  }
}

/// @nodoc

class _$CourseLoadedImpl implements CourseLoaded {
  const _$CourseLoadedImpl(final List<CourseEntity> courses)
      : _courses = courses;

  final List<CourseEntity> _courses;
  @override
  List<CourseEntity> get courses {
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  @override
  String toString() {
    return 'CourseState.loaded(courses: $courses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseLoadedImpl &&
            const DeepCollectionEquality().equals(other._courses, _courses));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_courses));

  /// Create a copy of CourseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseLoadedImplCopyWith<_$CourseLoadedImpl> get copyWith =>
      __$$CourseLoadedImplCopyWithImpl<_$CourseLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CourseEntity> courses) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) failure,
  }) {
    return loaded(courses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CourseEntity> courses)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? failure,
  }) {
    return loaded?.call(courses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CourseEntity> courses)? loaded,
    TResult Function(String message)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(courses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CourseInitial value) initial,
    required TResult Function(CourseLoading value) loading,
    required TResult Function(CourseLoaded value) loaded,
    required TResult Function(CourseSuccess value) success,
    required TResult Function(CourseFailure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CourseInitial value)? initial,
    TResult? Function(CourseLoading value)? loading,
    TResult? Function(CourseLoaded value)? loaded,
    TResult? Function(CourseSuccess value)? success,
    TResult? Function(CourseFailure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CourseInitial value)? initial,
    TResult Function(CourseLoading value)? loading,
    TResult Function(CourseLoaded value)? loaded,
    TResult Function(CourseSuccess value)? success,
    TResult Function(CourseFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CourseLoaded implements CourseState {
  const factory CourseLoaded(final List<CourseEntity> courses) =
      _$CourseLoadedImpl;

  List<CourseEntity> get courses;

  /// Create a copy of CourseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseLoadedImplCopyWith<_$CourseLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CourseSuccessImplCopyWith<$Res> {
  factory _$$CourseSuccessImplCopyWith(
          _$CourseSuccessImpl value, $Res Function(_$CourseSuccessImpl) then) =
      __$$CourseSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CourseSuccessImplCopyWithImpl<$Res>
    extends _$CourseStateCopyWithImpl<$Res, _$CourseSuccessImpl>
    implements _$$CourseSuccessImplCopyWith<$Res> {
  __$$CourseSuccessImplCopyWithImpl(
      _$CourseSuccessImpl _value, $Res Function(_$CourseSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CourseSuccessImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CourseSuccessImpl implements CourseSuccess {
  const _$CourseSuccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CourseState.success(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CourseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseSuccessImplCopyWith<_$CourseSuccessImpl> get copyWith =>
      __$$CourseSuccessImplCopyWithImpl<_$CourseSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CourseEntity> courses) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) failure,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CourseEntity> courses)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CourseEntity> courses)? loaded,
    TResult Function(String message)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CourseInitial value) initial,
    required TResult Function(CourseLoading value) loading,
    required TResult Function(CourseLoaded value) loaded,
    required TResult Function(CourseSuccess value) success,
    required TResult Function(CourseFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CourseInitial value)? initial,
    TResult? Function(CourseLoading value)? loading,
    TResult? Function(CourseLoaded value)? loaded,
    TResult? Function(CourseSuccess value)? success,
    TResult? Function(CourseFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CourseInitial value)? initial,
    TResult Function(CourseLoading value)? loading,
    TResult Function(CourseLoaded value)? loaded,
    TResult Function(CourseSuccess value)? success,
    TResult Function(CourseFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CourseSuccess implements CourseState {
  const factory CourseSuccess(final String message) = _$CourseSuccessImpl;

  String get message;

  /// Create a copy of CourseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseSuccessImplCopyWith<_$CourseSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CourseFailureImplCopyWith<$Res> {
  factory _$$CourseFailureImplCopyWith(
          _$CourseFailureImpl value, $Res Function(_$CourseFailureImpl) then) =
      __$$CourseFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CourseFailureImplCopyWithImpl<$Res>
    extends _$CourseStateCopyWithImpl<$Res, _$CourseFailureImpl>
    implements _$$CourseFailureImplCopyWith<$Res> {
  __$$CourseFailureImplCopyWithImpl(
      _$CourseFailureImpl _value, $Res Function(_$CourseFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CourseFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CourseFailureImpl implements CourseFailure {
  const _$CourseFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CourseState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CourseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseFailureImplCopyWith<_$CourseFailureImpl> get copyWith =>
      __$$CourseFailureImplCopyWithImpl<_$CourseFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CourseEntity> courses) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CourseEntity> courses)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CourseEntity> courses)? loaded,
    TResult Function(String message)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CourseInitial value) initial,
    required TResult Function(CourseLoading value) loading,
    required TResult Function(CourseLoaded value) loaded,
    required TResult Function(CourseSuccess value) success,
    required TResult Function(CourseFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CourseInitial value)? initial,
    TResult? Function(CourseLoading value)? loading,
    TResult? Function(CourseLoaded value)? loaded,
    TResult? Function(CourseSuccess value)? success,
    TResult? Function(CourseFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CourseInitial value)? initial,
    TResult Function(CourseLoading value)? loading,
    TResult Function(CourseLoaded value)? loaded,
    TResult Function(CourseSuccess value)? success,
    TResult Function(CourseFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class CourseFailure implements CourseState {
  const factory CourseFailure(final String message) = _$CourseFailureImpl;

  String get message;

  /// Create a copy of CourseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseFailureImplCopyWith<_$CourseFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
