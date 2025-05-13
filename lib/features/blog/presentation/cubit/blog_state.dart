part of 'blog_cubit.dart';

@freezed
class BlogState with _$BlogState {
  const factory BlogState.initial() = BlogInitial;
  const factory BlogState.loading() = BlogLoading;
  const factory BlogState.loaded(List<BlogEntity> blogs) = BlogLoaded;
  const factory BlogState.singleLoaded(BlogEntity blog) = BlogSingleLoaded;
  const factory BlogState.success(String message) = BlogSuccess;
  const factory BlogState.failure(String message) = BlogFailure;
}
