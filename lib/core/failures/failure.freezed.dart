// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverFailure,
    required TResult Function(String? message) cacheFailure,
    required TResult Function(String? message) noConnectionFailure,
    required TResult Function(String? message) somethingWrongFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverFailure,
    TResult? Function(String? message)? cacheFailure,
    TResult? Function(String? message)? noConnectionFailure,
    TResult? Function(String? message)? somethingWrongFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? cacheFailure,
    TResult Function(String? message)? noConnectionFailure,
    TResult Function(String? message)? somethingWrongFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(NoConnectionFailure value) noConnectionFailure,
    required TResult Function(SomethingWrongFailure value)
        somethingWrongFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(NoConnectionFailure value)? noConnectionFailure,
    TResult? Function(SomethingWrongFailure value)? somethingWrongFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(NoConnectionFailure value)? noConnectionFailure,
    TResult Function(SomethingWrongFailure value)? somethingWrongFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ServerFailureImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ServerFailureImpl extends ServerFailure {
  const _$ServerFailureImpl([this.message]) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.serverFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<_$ServerFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverFailure,
    required TResult Function(String? message) cacheFailure,
    required TResult Function(String? message) noConnectionFailure,
    required TResult Function(String? message) somethingWrongFailure,
  }) {
    return serverFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverFailure,
    TResult? Function(String? message)? cacheFailure,
    TResult? Function(String? message)? noConnectionFailure,
    TResult? Function(String? message)? somethingWrongFailure,
  }) {
    return serverFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? cacheFailure,
    TResult Function(String? message)? noConnectionFailure,
    TResult Function(String? message)? somethingWrongFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(NoConnectionFailure value) noConnectionFailure,
    required TResult Function(SomethingWrongFailure value)
        somethingWrongFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(NoConnectionFailure value)? noConnectionFailure,
    TResult? Function(SomethingWrongFailure value)? somethingWrongFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(NoConnectionFailure value)? noConnectionFailure,
    TResult Function(SomethingWrongFailure value)? somethingWrongFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure extends Failure {
  const factory ServerFailure([final String? message]) = _$ServerFailureImpl;
  const ServerFailure._() : super._();

  @override
  String? get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$CacheFailureImplCopyWith(
          _$CacheFailureImpl value, $Res Function(_$CacheFailureImpl) then) =
      __$$CacheFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$CacheFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$CacheFailureImpl>
    implements _$$CacheFailureImplCopyWith<$Res> {
  __$$CacheFailureImplCopyWithImpl(
      _$CacheFailureImpl _value, $Res Function(_$CacheFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$CacheFailureImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CacheFailureImpl extends CacheFailure {
  const _$CacheFailureImpl([this.message]) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.cacheFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheFailureImplCopyWith<_$CacheFailureImpl> get copyWith =>
      __$$CacheFailureImplCopyWithImpl<_$CacheFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverFailure,
    required TResult Function(String? message) cacheFailure,
    required TResult Function(String? message) noConnectionFailure,
    required TResult Function(String? message) somethingWrongFailure,
  }) {
    return cacheFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverFailure,
    TResult? Function(String? message)? cacheFailure,
    TResult? Function(String? message)? noConnectionFailure,
    TResult? Function(String? message)? somethingWrongFailure,
  }) {
    return cacheFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? cacheFailure,
    TResult Function(String? message)? noConnectionFailure,
    TResult Function(String? message)? somethingWrongFailure,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(NoConnectionFailure value) noConnectionFailure,
    required TResult Function(SomethingWrongFailure value)
        somethingWrongFailure,
  }) {
    return cacheFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(NoConnectionFailure value)? noConnectionFailure,
    TResult? Function(SomethingWrongFailure value)? somethingWrongFailure,
  }) {
    return cacheFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(NoConnectionFailure value)? noConnectionFailure,
    TResult Function(SomethingWrongFailure value)? somethingWrongFailure,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure(this);
    }
    return orElse();
  }
}

abstract class CacheFailure extends Failure {
  const factory CacheFailure([final String? message]) = _$CacheFailureImpl;
  const CacheFailure._() : super._();

  @override
  String? get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CacheFailureImplCopyWith<_$CacheFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoConnectionFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$NoConnectionFailureImplCopyWith(_$NoConnectionFailureImpl value,
          $Res Function(_$NoConnectionFailureImpl) then) =
      __$$NoConnectionFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$NoConnectionFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NoConnectionFailureImpl>
    implements _$$NoConnectionFailureImplCopyWith<$Res> {
  __$$NoConnectionFailureImplCopyWithImpl(_$NoConnectionFailureImpl _value,
      $Res Function(_$NoConnectionFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$NoConnectionFailureImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NoConnectionFailureImpl extends NoConnectionFailure {
  const _$NoConnectionFailureImpl([this.message]) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.noConnectionFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoConnectionFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoConnectionFailureImplCopyWith<_$NoConnectionFailureImpl> get copyWith =>
      __$$NoConnectionFailureImplCopyWithImpl<_$NoConnectionFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverFailure,
    required TResult Function(String? message) cacheFailure,
    required TResult Function(String? message) noConnectionFailure,
    required TResult Function(String? message) somethingWrongFailure,
  }) {
    return noConnectionFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverFailure,
    TResult? Function(String? message)? cacheFailure,
    TResult? Function(String? message)? noConnectionFailure,
    TResult? Function(String? message)? somethingWrongFailure,
  }) {
    return noConnectionFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? cacheFailure,
    TResult Function(String? message)? noConnectionFailure,
    TResult Function(String? message)? somethingWrongFailure,
    required TResult orElse(),
  }) {
    if (noConnectionFailure != null) {
      return noConnectionFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(NoConnectionFailure value) noConnectionFailure,
    required TResult Function(SomethingWrongFailure value)
        somethingWrongFailure,
  }) {
    return noConnectionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(NoConnectionFailure value)? noConnectionFailure,
    TResult? Function(SomethingWrongFailure value)? somethingWrongFailure,
  }) {
    return noConnectionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(NoConnectionFailure value)? noConnectionFailure,
    TResult Function(SomethingWrongFailure value)? somethingWrongFailure,
    required TResult orElse(),
  }) {
    if (noConnectionFailure != null) {
      return noConnectionFailure(this);
    }
    return orElse();
  }
}

abstract class NoConnectionFailure extends Failure {
  const factory NoConnectionFailure([final String? message]) =
      _$NoConnectionFailureImpl;
  const NoConnectionFailure._() : super._();

  @override
  String? get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoConnectionFailureImplCopyWith<_$NoConnectionFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SomethingWrongFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$SomethingWrongFailureImplCopyWith(
          _$SomethingWrongFailureImpl value,
          $Res Function(_$SomethingWrongFailureImpl) then) =
      __$$SomethingWrongFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$SomethingWrongFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$SomethingWrongFailureImpl>
    implements _$$SomethingWrongFailureImplCopyWith<$Res> {
  __$$SomethingWrongFailureImplCopyWithImpl(_$SomethingWrongFailureImpl _value,
      $Res Function(_$SomethingWrongFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$SomethingWrongFailureImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SomethingWrongFailureImpl extends SomethingWrongFailure {
  const _$SomethingWrongFailureImpl([this.message]) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.somethingWrongFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SomethingWrongFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SomethingWrongFailureImplCopyWith<_$SomethingWrongFailureImpl>
      get copyWith => __$$SomethingWrongFailureImplCopyWithImpl<
          _$SomethingWrongFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverFailure,
    required TResult Function(String? message) cacheFailure,
    required TResult Function(String? message) noConnectionFailure,
    required TResult Function(String? message) somethingWrongFailure,
  }) {
    return somethingWrongFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverFailure,
    TResult? Function(String? message)? cacheFailure,
    TResult? Function(String? message)? noConnectionFailure,
    TResult? Function(String? message)? somethingWrongFailure,
  }) {
    return somethingWrongFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? cacheFailure,
    TResult Function(String? message)? noConnectionFailure,
    TResult Function(String? message)? somethingWrongFailure,
    required TResult orElse(),
  }) {
    if (somethingWrongFailure != null) {
      return somethingWrongFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(NoConnectionFailure value) noConnectionFailure,
    required TResult Function(SomethingWrongFailure value)
        somethingWrongFailure,
  }) {
    return somethingWrongFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(NoConnectionFailure value)? noConnectionFailure,
    TResult? Function(SomethingWrongFailure value)? somethingWrongFailure,
  }) {
    return somethingWrongFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(NoConnectionFailure value)? noConnectionFailure,
    TResult Function(SomethingWrongFailure value)? somethingWrongFailure,
    required TResult orElse(),
  }) {
    if (somethingWrongFailure != null) {
      return somethingWrongFailure(this);
    }
    return orElse();
  }
}

abstract class SomethingWrongFailure extends Failure {
  const factory SomethingWrongFailure([final String? message]) =
      _$SomethingWrongFailureImpl;
  const SomethingWrongFailure._() : super._();

  @override
  String? get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SomethingWrongFailureImplCopyWith<_$SomethingWrongFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
