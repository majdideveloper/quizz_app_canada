// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FaqState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FaqEntity> faqs) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FaqEntity> faqs)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FaqEntity> faqs)? loaded,
    TResult Function(String message)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FaqInitial value) initial,
    required TResult Function(FaqLoading value) loading,
    required TResult Function(FaqLoaded value) loaded,
    required TResult Function(FaqSuccess value) success,
    required TResult Function(FaqFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FaqInitial value)? initial,
    TResult? Function(FaqLoading value)? loading,
    TResult? Function(FaqLoaded value)? loaded,
    TResult? Function(FaqSuccess value)? success,
    TResult? Function(FaqFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FaqInitial value)? initial,
    TResult Function(FaqLoading value)? loading,
    TResult Function(FaqLoaded value)? loaded,
    TResult Function(FaqSuccess value)? success,
    TResult Function(FaqFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqStateCopyWith<$Res> {
  factory $FaqStateCopyWith(FaqState value, $Res Function(FaqState) then) =
      _$FaqStateCopyWithImpl<$Res, FaqState>;
}

/// @nodoc
class _$FaqStateCopyWithImpl<$Res, $Val extends FaqState>
    implements $FaqStateCopyWith<$Res> {
  _$FaqStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FaqState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FaqInitialImplCopyWith<$Res> {
  factory _$$FaqInitialImplCopyWith(
          _$FaqInitialImpl value, $Res Function(_$FaqInitialImpl) then) =
      __$$FaqInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FaqInitialImplCopyWithImpl<$Res>
    extends _$FaqStateCopyWithImpl<$Res, _$FaqInitialImpl>
    implements _$$FaqInitialImplCopyWith<$Res> {
  __$$FaqInitialImplCopyWithImpl(
      _$FaqInitialImpl _value, $Res Function(_$FaqInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaqState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FaqInitialImpl implements FaqInitial {
  const _$FaqInitialImpl();

  @override
  String toString() {
    return 'FaqState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FaqInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FaqEntity> faqs) loaded,
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
    TResult? Function(List<FaqEntity> faqs)? loaded,
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
    TResult Function(List<FaqEntity> faqs)? loaded,
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
    required TResult Function(FaqInitial value) initial,
    required TResult Function(FaqLoading value) loading,
    required TResult Function(FaqLoaded value) loaded,
    required TResult Function(FaqSuccess value) success,
    required TResult Function(FaqFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FaqInitial value)? initial,
    TResult? Function(FaqLoading value)? loading,
    TResult? Function(FaqLoaded value)? loaded,
    TResult? Function(FaqSuccess value)? success,
    TResult? Function(FaqFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FaqInitial value)? initial,
    TResult Function(FaqLoading value)? loading,
    TResult Function(FaqLoaded value)? loaded,
    TResult Function(FaqSuccess value)? success,
    TResult Function(FaqFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FaqInitial implements FaqState {
  const factory FaqInitial() = _$FaqInitialImpl;
}

/// @nodoc
abstract class _$$FaqLoadingImplCopyWith<$Res> {
  factory _$$FaqLoadingImplCopyWith(
          _$FaqLoadingImpl value, $Res Function(_$FaqLoadingImpl) then) =
      __$$FaqLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FaqLoadingImplCopyWithImpl<$Res>
    extends _$FaqStateCopyWithImpl<$Res, _$FaqLoadingImpl>
    implements _$$FaqLoadingImplCopyWith<$Res> {
  __$$FaqLoadingImplCopyWithImpl(
      _$FaqLoadingImpl _value, $Res Function(_$FaqLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaqState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FaqLoadingImpl implements FaqLoading {
  const _$FaqLoadingImpl();

  @override
  String toString() {
    return 'FaqState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FaqLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FaqEntity> faqs) loaded,
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
    TResult? Function(List<FaqEntity> faqs)? loaded,
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
    TResult Function(List<FaqEntity> faqs)? loaded,
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
    required TResult Function(FaqInitial value) initial,
    required TResult Function(FaqLoading value) loading,
    required TResult Function(FaqLoaded value) loaded,
    required TResult Function(FaqSuccess value) success,
    required TResult Function(FaqFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FaqInitial value)? initial,
    TResult? Function(FaqLoading value)? loading,
    TResult? Function(FaqLoaded value)? loaded,
    TResult? Function(FaqSuccess value)? success,
    TResult? Function(FaqFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FaqInitial value)? initial,
    TResult Function(FaqLoading value)? loading,
    TResult Function(FaqLoaded value)? loaded,
    TResult Function(FaqSuccess value)? success,
    TResult Function(FaqFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FaqLoading implements FaqState {
  const factory FaqLoading() = _$FaqLoadingImpl;
}

/// @nodoc
abstract class _$$FaqLoadedImplCopyWith<$Res> {
  factory _$$FaqLoadedImplCopyWith(
          _$FaqLoadedImpl value, $Res Function(_$FaqLoadedImpl) then) =
      __$$FaqLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FaqEntity> faqs});
}

/// @nodoc
class __$$FaqLoadedImplCopyWithImpl<$Res>
    extends _$FaqStateCopyWithImpl<$Res, _$FaqLoadedImpl>
    implements _$$FaqLoadedImplCopyWith<$Res> {
  __$$FaqLoadedImplCopyWithImpl(
      _$FaqLoadedImpl _value, $Res Function(_$FaqLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaqState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? faqs = null,
  }) {
    return _then(_$FaqLoadedImpl(
      null == faqs
          ? _value._faqs
          : faqs // ignore: cast_nullable_to_non_nullable
              as List<FaqEntity>,
    ));
  }
}

/// @nodoc

class _$FaqLoadedImpl implements FaqLoaded {
  const _$FaqLoadedImpl(final List<FaqEntity> faqs) : _faqs = faqs;

  final List<FaqEntity> _faqs;
  @override
  List<FaqEntity> get faqs {
    if (_faqs is EqualUnmodifiableListView) return _faqs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_faqs);
  }

  @override
  String toString() {
    return 'FaqState.loaded(faqs: $faqs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqLoadedImpl &&
            const DeepCollectionEquality().equals(other._faqs, _faqs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_faqs));

  /// Create a copy of FaqState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqLoadedImplCopyWith<_$FaqLoadedImpl> get copyWith =>
      __$$FaqLoadedImplCopyWithImpl<_$FaqLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FaqEntity> faqs) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) failure,
  }) {
    return loaded(faqs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FaqEntity> faqs)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? failure,
  }) {
    return loaded?.call(faqs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FaqEntity> faqs)? loaded,
    TResult Function(String message)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(faqs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FaqInitial value) initial,
    required TResult Function(FaqLoading value) loading,
    required TResult Function(FaqLoaded value) loaded,
    required TResult Function(FaqSuccess value) success,
    required TResult Function(FaqFailure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FaqInitial value)? initial,
    TResult? Function(FaqLoading value)? loading,
    TResult? Function(FaqLoaded value)? loaded,
    TResult? Function(FaqSuccess value)? success,
    TResult? Function(FaqFailure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FaqInitial value)? initial,
    TResult Function(FaqLoading value)? loading,
    TResult Function(FaqLoaded value)? loaded,
    TResult Function(FaqSuccess value)? success,
    TResult Function(FaqFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FaqLoaded implements FaqState {
  const factory FaqLoaded(final List<FaqEntity> faqs) = _$FaqLoadedImpl;

  List<FaqEntity> get faqs;

  /// Create a copy of FaqState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FaqLoadedImplCopyWith<_$FaqLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FaqSuccessImplCopyWith<$Res> {
  factory _$$FaqSuccessImplCopyWith(
          _$FaqSuccessImpl value, $Res Function(_$FaqSuccessImpl) then) =
      __$$FaqSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FaqSuccessImplCopyWithImpl<$Res>
    extends _$FaqStateCopyWithImpl<$Res, _$FaqSuccessImpl>
    implements _$$FaqSuccessImplCopyWith<$Res> {
  __$$FaqSuccessImplCopyWithImpl(
      _$FaqSuccessImpl _value, $Res Function(_$FaqSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaqState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FaqSuccessImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FaqSuccessImpl implements FaqSuccess {
  const _$FaqSuccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'FaqState.success(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of FaqState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqSuccessImplCopyWith<_$FaqSuccessImpl> get copyWith =>
      __$$FaqSuccessImplCopyWithImpl<_$FaqSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FaqEntity> faqs) loaded,
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
    TResult? Function(List<FaqEntity> faqs)? loaded,
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
    TResult Function(List<FaqEntity> faqs)? loaded,
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
    required TResult Function(FaqInitial value) initial,
    required TResult Function(FaqLoading value) loading,
    required TResult Function(FaqLoaded value) loaded,
    required TResult Function(FaqSuccess value) success,
    required TResult Function(FaqFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FaqInitial value)? initial,
    TResult? Function(FaqLoading value)? loading,
    TResult? Function(FaqLoaded value)? loaded,
    TResult? Function(FaqSuccess value)? success,
    TResult? Function(FaqFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FaqInitial value)? initial,
    TResult Function(FaqLoading value)? loading,
    TResult Function(FaqLoaded value)? loaded,
    TResult Function(FaqSuccess value)? success,
    TResult Function(FaqFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class FaqSuccess implements FaqState {
  const factory FaqSuccess(final String message) = _$FaqSuccessImpl;

  String get message;

  /// Create a copy of FaqState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FaqSuccessImplCopyWith<_$FaqSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FaqFailureImplCopyWith<$Res> {
  factory _$$FaqFailureImplCopyWith(
          _$FaqFailureImpl value, $Res Function(_$FaqFailureImpl) then) =
      __$$FaqFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FaqFailureImplCopyWithImpl<$Res>
    extends _$FaqStateCopyWithImpl<$Res, _$FaqFailureImpl>
    implements _$$FaqFailureImplCopyWith<$Res> {
  __$$FaqFailureImplCopyWithImpl(
      _$FaqFailureImpl _value, $Res Function(_$FaqFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaqState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FaqFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FaqFailureImpl implements FaqFailure {
  const _$FaqFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'FaqState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of FaqState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqFailureImplCopyWith<_$FaqFailureImpl> get copyWith =>
      __$$FaqFailureImplCopyWithImpl<_$FaqFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FaqEntity> faqs) loaded,
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
    TResult? Function(List<FaqEntity> faqs)? loaded,
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
    TResult Function(List<FaqEntity> faqs)? loaded,
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
    required TResult Function(FaqInitial value) initial,
    required TResult Function(FaqLoading value) loading,
    required TResult Function(FaqLoaded value) loaded,
    required TResult Function(FaqSuccess value) success,
    required TResult Function(FaqFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FaqInitial value)? initial,
    TResult? Function(FaqLoading value)? loading,
    TResult? Function(FaqLoaded value)? loaded,
    TResult? Function(FaqSuccess value)? success,
    TResult? Function(FaqFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FaqInitial value)? initial,
    TResult Function(FaqLoading value)? loading,
    TResult Function(FaqLoaded value)? loaded,
    TResult Function(FaqSuccess value)? success,
    TResult Function(FaqFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FaqFailure implements FaqState {
  const factory FaqFailure(final String message) = _$FaqFailureImpl;

  String get message;

  /// Create a copy of FaqState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FaqFailureImplCopyWith<_$FaqFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
