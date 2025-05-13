// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resource_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResourceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ResourceEntity> resources) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ResourceEntity> resources)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ResourceEntity> resources)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResourceInitial value) initial,
    required TResult Function(ResourceLoading value) loading,
    required TResult Function(ResourceLoaded value) loaded,
    required TResult Function(ResourceError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResourceInitial value)? initial,
    TResult? Function(ResourceLoading value)? loading,
    TResult? Function(ResourceLoaded value)? loaded,
    TResult? Function(ResourceError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResourceInitial value)? initial,
    TResult Function(ResourceLoading value)? loading,
    TResult Function(ResourceLoaded value)? loaded,
    TResult Function(ResourceError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceStateCopyWith<$Res> {
  factory $ResourceStateCopyWith(
          ResourceState value, $Res Function(ResourceState) then) =
      _$ResourceStateCopyWithImpl<$Res, ResourceState>;
}

/// @nodoc
class _$ResourceStateCopyWithImpl<$Res, $Val extends ResourceState>
    implements $ResourceStateCopyWith<$Res> {
  _$ResourceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResourceState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ResourceInitialImplCopyWith<$Res> {
  factory _$$ResourceInitialImplCopyWith(_$ResourceInitialImpl value,
          $Res Function(_$ResourceInitialImpl) then) =
      __$$ResourceInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResourceInitialImplCopyWithImpl<$Res>
    extends _$ResourceStateCopyWithImpl<$Res, _$ResourceInitialImpl>
    implements _$$ResourceInitialImplCopyWith<$Res> {
  __$$ResourceInitialImplCopyWithImpl(
      _$ResourceInitialImpl _value, $Res Function(_$ResourceInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResourceState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResourceInitialImpl implements ResourceInitial {
  const _$ResourceInitialImpl();

  @override
  String toString() {
    return 'ResourceState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResourceInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ResourceEntity> resources) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ResourceEntity> resources)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ResourceEntity> resources)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(ResourceInitial value) initial,
    required TResult Function(ResourceLoading value) loading,
    required TResult Function(ResourceLoaded value) loaded,
    required TResult Function(ResourceError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResourceInitial value)? initial,
    TResult? Function(ResourceLoading value)? loading,
    TResult? Function(ResourceLoaded value)? loaded,
    TResult? Function(ResourceError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResourceInitial value)? initial,
    TResult Function(ResourceLoading value)? loading,
    TResult Function(ResourceLoaded value)? loaded,
    TResult Function(ResourceError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ResourceInitial implements ResourceState {
  const factory ResourceInitial() = _$ResourceInitialImpl;
}

/// @nodoc
abstract class _$$ResourceLoadingImplCopyWith<$Res> {
  factory _$$ResourceLoadingImplCopyWith(_$ResourceLoadingImpl value,
          $Res Function(_$ResourceLoadingImpl) then) =
      __$$ResourceLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResourceLoadingImplCopyWithImpl<$Res>
    extends _$ResourceStateCopyWithImpl<$Res, _$ResourceLoadingImpl>
    implements _$$ResourceLoadingImplCopyWith<$Res> {
  __$$ResourceLoadingImplCopyWithImpl(
      _$ResourceLoadingImpl _value, $Res Function(_$ResourceLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResourceState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResourceLoadingImpl implements ResourceLoading {
  const _$ResourceLoadingImpl();

  @override
  String toString() {
    return 'ResourceState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResourceLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ResourceEntity> resources) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ResourceEntity> resources)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ResourceEntity> resources)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(ResourceInitial value) initial,
    required TResult Function(ResourceLoading value) loading,
    required TResult Function(ResourceLoaded value) loaded,
    required TResult Function(ResourceError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResourceInitial value)? initial,
    TResult? Function(ResourceLoading value)? loading,
    TResult? Function(ResourceLoaded value)? loaded,
    TResult? Function(ResourceError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResourceInitial value)? initial,
    TResult Function(ResourceLoading value)? loading,
    TResult Function(ResourceLoaded value)? loaded,
    TResult Function(ResourceError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ResourceLoading implements ResourceState {
  const factory ResourceLoading() = _$ResourceLoadingImpl;
}

/// @nodoc
abstract class _$$ResourceLoadedImplCopyWith<$Res> {
  factory _$$ResourceLoadedImplCopyWith(_$ResourceLoadedImpl value,
          $Res Function(_$ResourceLoadedImpl) then) =
      __$$ResourceLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ResourceEntity> resources});
}

/// @nodoc
class __$$ResourceLoadedImplCopyWithImpl<$Res>
    extends _$ResourceStateCopyWithImpl<$Res, _$ResourceLoadedImpl>
    implements _$$ResourceLoadedImplCopyWith<$Res> {
  __$$ResourceLoadedImplCopyWithImpl(
      _$ResourceLoadedImpl _value, $Res Function(_$ResourceLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResourceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resources = null,
  }) {
    return _then(_$ResourceLoadedImpl(
      null == resources
          ? _value._resources
          : resources // ignore: cast_nullable_to_non_nullable
              as List<ResourceEntity>,
    ));
  }
}

/// @nodoc

class _$ResourceLoadedImpl implements ResourceLoaded {
  const _$ResourceLoadedImpl(final List<ResourceEntity> resources)
      : _resources = resources;

  final List<ResourceEntity> _resources;
  @override
  List<ResourceEntity> get resources {
    if (_resources is EqualUnmodifiableListView) return _resources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resources);
  }

  @override
  String toString() {
    return 'ResourceState.loaded(resources: $resources)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourceLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._resources, _resources));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_resources));

  /// Create a copy of ResourceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourceLoadedImplCopyWith<_$ResourceLoadedImpl> get copyWith =>
      __$$ResourceLoadedImplCopyWithImpl<_$ResourceLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ResourceEntity> resources) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(resources);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ResourceEntity> resources)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(resources);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ResourceEntity> resources)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(resources);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResourceInitial value) initial,
    required TResult Function(ResourceLoading value) loading,
    required TResult Function(ResourceLoaded value) loaded,
    required TResult Function(ResourceError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResourceInitial value)? initial,
    TResult? Function(ResourceLoading value)? loading,
    TResult? Function(ResourceLoaded value)? loaded,
    TResult? Function(ResourceError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResourceInitial value)? initial,
    TResult Function(ResourceLoading value)? loading,
    TResult Function(ResourceLoaded value)? loaded,
    TResult Function(ResourceError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ResourceLoaded implements ResourceState {
  const factory ResourceLoaded(final List<ResourceEntity> resources) =
      _$ResourceLoadedImpl;

  List<ResourceEntity> get resources;

  /// Create a copy of ResourceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResourceLoadedImplCopyWith<_$ResourceLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResourceErrorImplCopyWith<$Res> {
  factory _$$ResourceErrorImplCopyWith(
          _$ResourceErrorImpl value, $Res Function(_$ResourceErrorImpl) then) =
      __$$ResourceErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ResourceErrorImplCopyWithImpl<$Res>
    extends _$ResourceStateCopyWithImpl<$Res, _$ResourceErrorImpl>
    implements _$$ResourceErrorImplCopyWith<$Res> {
  __$$ResourceErrorImplCopyWithImpl(
      _$ResourceErrorImpl _value, $Res Function(_$ResourceErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResourceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ResourceErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResourceErrorImpl implements ResourceError {
  const _$ResourceErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ResourceState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourceErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ResourceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourceErrorImplCopyWith<_$ResourceErrorImpl> get copyWith =>
      __$$ResourceErrorImplCopyWithImpl<_$ResourceErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ResourceEntity> resources) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ResourceEntity> resources)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ResourceEntity> resources)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResourceInitial value) initial,
    required TResult Function(ResourceLoading value) loading,
    required TResult Function(ResourceLoaded value) loaded,
    required TResult Function(ResourceError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResourceInitial value)? initial,
    TResult? Function(ResourceLoading value)? loading,
    TResult? Function(ResourceLoaded value)? loaded,
    TResult? Function(ResourceError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResourceInitial value)? initial,
    TResult Function(ResourceLoading value)? loading,
    TResult Function(ResourceLoaded value)? loaded,
    TResult Function(ResourceError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ResourceError implements ResourceState {
  const factory ResourceError(final String message) = _$ResourceErrorImpl;

  String get message;

  /// Create a copy of ResourceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResourceErrorImplCopyWith<_$ResourceErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
