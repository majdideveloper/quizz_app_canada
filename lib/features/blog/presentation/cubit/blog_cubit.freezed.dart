// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BlogState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BlogEntity> blogs) loaded,
    required TResult Function(BlogEntity blog) singleLoaded,
    required TResult Function(String message) success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BlogEntity> blogs)? loaded,
    TResult? Function(BlogEntity blog)? singleLoaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BlogEntity> blogs)? loaded,
    TResult Function(BlogEntity blog)? singleLoaded,
    TResult Function(String message)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlogInitial value) initial,
    required TResult Function(BlogLoading value) loading,
    required TResult Function(BlogLoaded value) loaded,
    required TResult Function(BlogSingleLoaded value) singleLoaded,
    required TResult Function(BlogSuccess value) success,
    required TResult Function(BlogFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlogInitial value)? initial,
    TResult? Function(BlogLoading value)? loading,
    TResult? Function(BlogLoaded value)? loaded,
    TResult? Function(BlogSingleLoaded value)? singleLoaded,
    TResult? Function(BlogSuccess value)? success,
    TResult? Function(BlogFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlogInitial value)? initial,
    TResult Function(BlogLoading value)? loading,
    TResult Function(BlogLoaded value)? loaded,
    TResult Function(BlogSingleLoaded value)? singleLoaded,
    TResult Function(BlogSuccess value)? success,
    TResult Function(BlogFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogStateCopyWith<$Res> {
  factory $BlogStateCopyWith(BlogState value, $Res Function(BlogState) then) =
      _$BlogStateCopyWithImpl<$Res, BlogState>;
}

/// @nodoc
class _$BlogStateCopyWithImpl<$Res, $Val extends BlogState>
    implements $BlogStateCopyWith<$Res> {
  _$BlogStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlogState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BlogInitialImplCopyWith<$Res> {
  factory _$$BlogInitialImplCopyWith(
          _$BlogInitialImpl value, $Res Function(_$BlogInitialImpl) then) =
      __$$BlogInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlogInitialImplCopyWithImpl<$Res>
    extends _$BlogStateCopyWithImpl<$Res, _$BlogInitialImpl>
    implements _$$BlogInitialImplCopyWith<$Res> {
  __$$BlogInitialImplCopyWithImpl(
      _$BlogInitialImpl _value, $Res Function(_$BlogInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlogState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BlogInitialImpl implements BlogInitial {
  const _$BlogInitialImpl();

  @override
  String toString() {
    return 'BlogState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BlogInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BlogEntity> blogs) loaded,
    required TResult Function(BlogEntity blog) singleLoaded,
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
    TResult? Function(List<BlogEntity> blogs)? loaded,
    TResult? Function(BlogEntity blog)? singleLoaded,
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
    TResult Function(List<BlogEntity> blogs)? loaded,
    TResult Function(BlogEntity blog)? singleLoaded,
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
    required TResult Function(BlogInitial value) initial,
    required TResult Function(BlogLoading value) loading,
    required TResult Function(BlogLoaded value) loaded,
    required TResult Function(BlogSingleLoaded value) singleLoaded,
    required TResult Function(BlogSuccess value) success,
    required TResult Function(BlogFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlogInitial value)? initial,
    TResult? Function(BlogLoading value)? loading,
    TResult? Function(BlogLoaded value)? loaded,
    TResult? Function(BlogSingleLoaded value)? singleLoaded,
    TResult? Function(BlogSuccess value)? success,
    TResult? Function(BlogFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlogInitial value)? initial,
    TResult Function(BlogLoading value)? loading,
    TResult Function(BlogLoaded value)? loaded,
    TResult Function(BlogSingleLoaded value)? singleLoaded,
    TResult Function(BlogSuccess value)? success,
    TResult Function(BlogFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class BlogInitial implements BlogState {
  const factory BlogInitial() = _$BlogInitialImpl;
}

/// @nodoc
abstract class _$$BlogLoadingImplCopyWith<$Res> {
  factory _$$BlogLoadingImplCopyWith(
          _$BlogLoadingImpl value, $Res Function(_$BlogLoadingImpl) then) =
      __$$BlogLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlogLoadingImplCopyWithImpl<$Res>
    extends _$BlogStateCopyWithImpl<$Res, _$BlogLoadingImpl>
    implements _$$BlogLoadingImplCopyWith<$Res> {
  __$$BlogLoadingImplCopyWithImpl(
      _$BlogLoadingImpl _value, $Res Function(_$BlogLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlogState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BlogLoadingImpl implements BlogLoading {
  const _$BlogLoadingImpl();

  @override
  String toString() {
    return 'BlogState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BlogLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BlogEntity> blogs) loaded,
    required TResult Function(BlogEntity blog) singleLoaded,
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
    TResult? Function(List<BlogEntity> blogs)? loaded,
    TResult? Function(BlogEntity blog)? singleLoaded,
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
    TResult Function(List<BlogEntity> blogs)? loaded,
    TResult Function(BlogEntity blog)? singleLoaded,
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
    required TResult Function(BlogInitial value) initial,
    required TResult Function(BlogLoading value) loading,
    required TResult Function(BlogLoaded value) loaded,
    required TResult Function(BlogSingleLoaded value) singleLoaded,
    required TResult Function(BlogSuccess value) success,
    required TResult Function(BlogFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlogInitial value)? initial,
    TResult? Function(BlogLoading value)? loading,
    TResult? Function(BlogLoaded value)? loaded,
    TResult? Function(BlogSingleLoaded value)? singleLoaded,
    TResult? Function(BlogSuccess value)? success,
    TResult? Function(BlogFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlogInitial value)? initial,
    TResult Function(BlogLoading value)? loading,
    TResult Function(BlogLoaded value)? loaded,
    TResult Function(BlogSingleLoaded value)? singleLoaded,
    TResult Function(BlogSuccess value)? success,
    TResult Function(BlogFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BlogLoading implements BlogState {
  const factory BlogLoading() = _$BlogLoadingImpl;
}

/// @nodoc
abstract class _$$BlogLoadedImplCopyWith<$Res> {
  factory _$$BlogLoadedImplCopyWith(
          _$BlogLoadedImpl value, $Res Function(_$BlogLoadedImpl) then) =
      __$$BlogLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BlogEntity> blogs});
}

/// @nodoc
class __$$BlogLoadedImplCopyWithImpl<$Res>
    extends _$BlogStateCopyWithImpl<$Res, _$BlogLoadedImpl>
    implements _$$BlogLoadedImplCopyWith<$Res> {
  __$$BlogLoadedImplCopyWithImpl(
      _$BlogLoadedImpl _value, $Res Function(_$BlogLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlogState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blogs = null,
  }) {
    return _then(_$BlogLoadedImpl(
      null == blogs
          ? _value._blogs
          : blogs // ignore: cast_nullable_to_non_nullable
              as List<BlogEntity>,
    ));
  }
}

/// @nodoc

class _$BlogLoadedImpl implements BlogLoaded {
  const _$BlogLoadedImpl(final List<BlogEntity> blogs) : _blogs = blogs;

  final List<BlogEntity> _blogs;
  @override
  List<BlogEntity> get blogs {
    if (_blogs is EqualUnmodifiableListView) return _blogs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blogs);
  }

  @override
  String toString() {
    return 'BlogState.loaded(blogs: $blogs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogLoadedImpl &&
            const DeepCollectionEquality().equals(other._blogs, _blogs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_blogs));

  /// Create a copy of BlogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogLoadedImplCopyWith<_$BlogLoadedImpl> get copyWith =>
      __$$BlogLoadedImplCopyWithImpl<_$BlogLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BlogEntity> blogs) loaded,
    required TResult Function(BlogEntity blog) singleLoaded,
    required TResult Function(String message) success,
    required TResult Function(String message) failure,
  }) {
    return loaded(blogs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BlogEntity> blogs)? loaded,
    TResult? Function(BlogEntity blog)? singleLoaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? failure,
  }) {
    return loaded?.call(blogs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BlogEntity> blogs)? loaded,
    TResult Function(BlogEntity blog)? singleLoaded,
    TResult Function(String message)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(blogs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlogInitial value) initial,
    required TResult Function(BlogLoading value) loading,
    required TResult Function(BlogLoaded value) loaded,
    required TResult Function(BlogSingleLoaded value) singleLoaded,
    required TResult Function(BlogSuccess value) success,
    required TResult Function(BlogFailure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlogInitial value)? initial,
    TResult? Function(BlogLoading value)? loading,
    TResult? Function(BlogLoaded value)? loaded,
    TResult? Function(BlogSingleLoaded value)? singleLoaded,
    TResult? Function(BlogSuccess value)? success,
    TResult? Function(BlogFailure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlogInitial value)? initial,
    TResult Function(BlogLoading value)? loading,
    TResult Function(BlogLoaded value)? loaded,
    TResult Function(BlogSingleLoaded value)? singleLoaded,
    TResult Function(BlogSuccess value)? success,
    TResult Function(BlogFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BlogLoaded implements BlogState {
  const factory BlogLoaded(final List<BlogEntity> blogs) = _$BlogLoadedImpl;

  List<BlogEntity> get blogs;

  /// Create a copy of BlogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlogLoadedImplCopyWith<_$BlogLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlogSingleLoadedImplCopyWith<$Res> {
  factory _$$BlogSingleLoadedImplCopyWith(_$BlogSingleLoadedImpl value,
          $Res Function(_$BlogSingleLoadedImpl) then) =
      __$$BlogSingleLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BlogEntity blog});

  $BlogEntityCopyWith<$Res> get blog;
}

/// @nodoc
class __$$BlogSingleLoadedImplCopyWithImpl<$Res>
    extends _$BlogStateCopyWithImpl<$Res, _$BlogSingleLoadedImpl>
    implements _$$BlogSingleLoadedImplCopyWith<$Res> {
  __$$BlogSingleLoadedImplCopyWithImpl(_$BlogSingleLoadedImpl _value,
      $Res Function(_$BlogSingleLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlogState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blog = null,
  }) {
    return _then(_$BlogSingleLoadedImpl(
      null == blog
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as BlogEntity,
    ));
  }

  /// Create a copy of BlogState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlogEntityCopyWith<$Res> get blog {
    return $BlogEntityCopyWith<$Res>(_value.blog, (value) {
      return _then(_value.copyWith(blog: value));
    });
  }
}

/// @nodoc

class _$BlogSingleLoadedImpl implements BlogSingleLoaded {
  const _$BlogSingleLoadedImpl(this.blog);

  @override
  final BlogEntity blog;

  @override
  String toString() {
    return 'BlogState.singleLoaded(blog: $blog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogSingleLoadedImpl &&
            (identical(other.blog, blog) || other.blog == blog));
  }

  @override
  int get hashCode => Object.hash(runtimeType, blog);

  /// Create a copy of BlogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogSingleLoadedImplCopyWith<_$BlogSingleLoadedImpl> get copyWith =>
      __$$BlogSingleLoadedImplCopyWithImpl<_$BlogSingleLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BlogEntity> blogs) loaded,
    required TResult Function(BlogEntity blog) singleLoaded,
    required TResult Function(String message) success,
    required TResult Function(String message) failure,
  }) {
    return singleLoaded(blog);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BlogEntity> blogs)? loaded,
    TResult? Function(BlogEntity blog)? singleLoaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? failure,
  }) {
    return singleLoaded?.call(blog);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BlogEntity> blogs)? loaded,
    TResult Function(BlogEntity blog)? singleLoaded,
    TResult Function(String message)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (singleLoaded != null) {
      return singleLoaded(blog);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlogInitial value) initial,
    required TResult Function(BlogLoading value) loading,
    required TResult Function(BlogLoaded value) loaded,
    required TResult Function(BlogSingleLoaded value) singleLoaded,
    required TResult Function(BlogSuccess value) success,
    required TResult Function(BlogFailure value) failure,
  }) {
    return singleLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlogInitial value)? initial,
    TResult? Function(BlogLoading value)? loading,
    TResult? Function(BlogLoaded value)? loaded,
    TResult? Function(BlogSingleLoaded value)? singleLoaded,
    TResult? Function(BlogSuccess value)? success,
    TResult? Function(BlogFailure value)? failure,
  }) {
    return singleLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlogInitial value)? initial,
    TResult Function(BlogLoading value)? loading,
    TResult Function(BlogLoaded value)? loaded,
    TResult Function(BlogSingleLoaded value)? singleLoaded,
    TResult Function(BlogSuccess value)? success,
    TResult Function(BlogFailure value)? failure,
    required TResult orElse(),
  }) {
    if (singleLoaded != null) {
      return singleLoaded(this);
    }
    return orElse();
  }
}

abstract class BlogSingleLoaded implements BlogState {
  const factory BlogSingleLoaded(final BlogEntity blog) =
      _$BlogSingleLoadedImpl;

  BlogEntity get blog;

  /// Create a copy of BlogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlogSingleLoadedImplCopyWith<_$BlogSingleLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlogSuccessImplCopyWith<$Res> {
  factory _$$BlogSuccessImplCopyWith(
          _$BlogSuccessImpl value, $Res Function(_$BlogSuccessImpl) then) =
      __$$BlogSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$BlogSuccessImplCopyWithImpl<$Res>
    extends _$BlogStateCopyWithImpl<$Res, _$BlogSuccessImpl>
    implements _$$BlogSuccessImplCopyWith<$Res> {
  __$$BlogSuccessImplCopyWithImpl(
      _$BlogSuccessImpl _value, $Res Function(_$BlogSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlogState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$BlogSuccessImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BlogSuccessImpl implements BlogSuccess {
  const _$BlogSuccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'BlogState.success(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of BlogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogSuccessImplCopyWith<_$BlogSuccessImpl> get copyWith =>
      __$$BlogSuccessImplCopyWithImpl<_$BlogSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BlogEntity> blogs) loaded,
    required TResult Function(BlogEntity blog) singleLoaded,
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
    TResult? Function(List<BlogEntity> blogs)? loaded,
    TResult? Function(BlogEntity blog)? singleLoaded,
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
    TResult Function(List<BlogEntity> blogs)? loaded,
    TResult Function(BlogEntity blog)? singleLoaded,
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
    required TResult Function(BlogInitial value) initial,
    required TResult Function(BlogLoading value) loading,
    required TResult Function(BlogLoaded value) loaded,
    required TResult Function(BlogSingleLoaded value) singleLoaded,
    required TResult Function(BlogSuccess value) success,
    required TResult Function(BlogFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlogInitial value)? initial,
    TResult? Function(BlogLoading value)? loading,
    TResult? Function(BlogLoaded value)? loaded,
    TResult? Function(BlogSingleLoaded value)? singleLoaded,
    TResult? Function(BlogSuccess value)? success,
    TResult? Function(BlogFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlogInitial value)? initial,
    TResult Function(BlogLoading value)? loading,
    TResult Function(BlogLoaded value)? loaded,
    TResult Function(BlogSingleLoaded value)? singleLoaded,
    TResult Function(BlogSuccess value)? success,
    TResult Function(BlogFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class BlogSuccess implements BlogState {
  const factory BlogSuccess(final String message) = _$BlogSuccessImpl;

  String get message;

  /// Create a copy of BlogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlogSuccessImplCopyWith<_$BlogSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlogFailureImplCopyWith<$Res> {
  factory _$$BlogFailureImplCopyWith(
          _$BlogFailureImpl value, $Res Function(_$BlogFailureImpl) then) =
      __$$BlogFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$BlogFailureImplCopyWithImpl<$Res>
    extends _$BlogStateCopyWithImpl<$Res, _$BlogFailureImpl>
    implements _$$BlogFailureImplCopyWith<$Res> {
  __$$BlogFailureImplCopyWithImpl(
      _$BlogFailureImpl _value, $Res Function(_$BlogFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlogState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$BlogFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BlogFailureImpl implements BlogFailure {
  const _$BlogFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'BlogState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of BlogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogFailureImplCopyWith<_$BlogFailureImpl> get copyWith =>
      __$$BlogFailureImplCopyWithImpl<_$BlogFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BlogEntity> blogs) loaded,
    required TResult Function(BlogEntity blog) singleLoaded,
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
    TResult? Function(List<BlogEntity> blogs)? loaded,
    TResult? Function(BlogEntity blog)? singleLoaded,
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
    TResult Function(List<BlogEntity> blogs)? loaded,
    TResult Function(BlogEntity blog)? singleLoaded,
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
    required TResult Function(BlogInitial value) initial,
    required TResult Function(BlogLoading value) loading,
    required TResult Function(BlogLoaded value) loaded,
    required TResult Function(BlogSingleLoaded value) singleLoaded,
    required TResult Function(BlogSuccess value) success,
    required TResult Function(BlogFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlogInitial value)? initial,
    TResult? Function(BlogLoading value)? loading,
    TResult? Function(BlogLoaded value)? loaded,
    TResult? Function(BlogSingleLoaded value)? singleLoaded,
    TResult? Function(BlogSuccess value)? success,
    TResult? Function(BlogFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlogInitial value)? initial,
    TResult Function(BlogLoading value)? loading,
    TResult Function(BlogLoaded value)? loaded,
    TResult Function(BlogSingleLoaded value)? singleLoaded,
    TResult Function(BlogSuccess value)? success,
    TResult Function(BlogFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class BlogFailure implements BlogState {
  const factory BlogFailure(final String message) = _$BlogFailureImpl;

  String get message;

  /// Create a copy of BlogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlogFailureImplCopyWith<_$BlogFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
