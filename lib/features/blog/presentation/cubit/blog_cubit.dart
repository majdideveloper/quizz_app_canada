import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quizz_app_canada/features/blog/domain/entities/blog_entity.dart';
import 'package:quizz_app_canada/features/blog/domain/usecases/create_blog.dart';
import 'package:quizz_app_canada/features/blog/domain/usecases/delete_blog.dart';
import 'package:quizz_app_canada/features/blog/domain/usecases/get_all_blogs.dart';
import 'package:quizz_app_canada/features/blog/domain/usecases/get_blog_by_id.dart';
import 'package:quizz_app_canada/features/blog/domain/usecases/search_blog.dart';
import 'package:quizz_app_canada/features/blog/domain/usecases/update_blog.dart';

part 'blog_state.dart';
part 'blog_cubit.freezed.dart';

class BlogCubit extends Cubit<BlogState> {
  final GetAllBlogsUseCase getAllBlogsUseCase;
  final GetBlogByIdUseCase getBlogByIdUseCase;
  final CreateBlogUseCase createBlogUseCase;
  final UpdateBlogUseCase updateBlogUseCase;
  final DeleteBlogUseCase deleteBlogUseCase;
  final SearchBlogsUseCase searchBlogsUseCase;

  BlogCubit({
    required this.getAllBlogsUseCase,
    required this.getBlogByIdUseCase,
    required this.createBlogUseCase,
    required this.updateBlogUseCase,
    required this.deleteBlogUseCase,
    required this.searchBlogsUseCase,
  }) : super(const BlogState.initial());

  void getAllBlogs() async {
    emit(const BlogState.loading());
    final result = await getAllBlogsUseCase();
    result.fold(
      (failure) => emit(BlogState.failure(failure.defaultMessage)),
      (blogs) => emit(BlogState.loaded(blogs)),
    );
  }

  void getBlogById(String id) async {
    emit(const BlogState.loading());
    final result = await getBlogByIdUseCase(id);
    result.fold(
      (failure) => emit(BlogState.failure(failure.defaultMessage)),
      (blog) => emit(BlogState.singleLoaded(blog)),
    );
  }

  void createBlog(BlogEntity blog) async {
    emit(const BlogState.loading());
    final result = await createBlogUseCase(blog);
    result.fold(
      (failure) => emit(BlogState.failure(failure.defaultMessage)),
      (blog) => emit(BlogState.success("Blog created successfully")),
    );
    getAllBlogs();
  }

  void updateBlog(BlogEntity blog) async {
    emit(const BlogState.loading());
    final result = await updateBlogUseCase(blog);
    result.fold(
      (failure) => emit(BlogState.failure(failure.defaultMessage)),
      (blog) => emit(BlogState.success("Blog updated successfully")),
    );
    getAllBlogs();
  }

  void deleteBlog(String id) async {
    emit(const BlogState.loading());
    final result = await deleteBlogUseCase(id);
    result.fold(
      (failure) => emit(BlogState.failure(failure.defaultMessage)),
      (_) => emit(BlogState.success("Blog deleted successfully")),
    );
    getAllBlogs();
  }

  void searchBlogs(String query) async {
    emit(const BlogState.loading());
    final result = await searchBlogsUseCase(query);
    result.fold(
      (failure) => emit(BlogState.failure(failure.defaultMessage)),
      (blogs) => emit(BlogState.loaded(blogs)),
    );
  }
}
