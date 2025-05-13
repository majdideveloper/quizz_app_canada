



import 'package:pocketbase/pocketbase.dart';
import 'package:quizz_app_canada/core/constants/name_collections.dart';
import 'package:quizz_app_canada/features/blog/data/datasources/remote/blog_remote_data_source.dart';
import 'package:quizz_app_canada/features/blog/data/models/blog_model.dart';




class BlogRemoteDataSourceImplPocketbase implements BlogRemoteDataSource {
  final PocketBase pocketBase;

  BlogRemoteDataSourceImplPocketbase({required this.pocketBase});

  @override
  Future<BlogModel> createBlog(BlogModel blog) async {
    final body = {
      'title': blog.title,
      'post': blog.post,
      'imagePost': blog.imagePost,
    };

    final record = await pocketBase.collection(NameCollections.posts).create(body: body);
    return BlogModel.fromPocketBase(record.toJson());
  }

  @override
  Future<void> deleteBlog(String id) async {
    await pocketBase.collection(NameCollections.posts).delete(id);
  }

  @override
  Future<List<BlogModel>> getAllBlogs() async {
    final records = await pocketBase.collection(NameCollections.posts).getFullList();
    return records.map((record) => BlogModel.fromPocketBase(record.toJson())).toList();
  }

  @override
  Future<BlogModel> getBlogById(String id) async {
    final record = await pocketBase.collection(NameCollections.posts).getOne(id);
    return BlogModel.fromPocketBase(record.toJson());
  }

  @override
  Future<List<BlogModel>> searchBlogs(String query) async {
    final result = await pocketBase.collection(NameCollections.posts).getList(
      filter: 'title ~ "$query" || post ~ "$query"',
    );
    return result.items.map((item) => BlogModel.fromPocketBase(item.toJson())).toList();
  }

  @override
  Future<BlogModel> updateBlog(BlogModel blog) async {
    final body = {
      'title': blog.title,
      'post': blog.post,
      'imagePost': blog.imagePost,
    };

    final record = await pocketBase.collection(NameCollections.posts).update(blog.id, body: body);
    return BlogModel.fromPocketBase(record.toJson());
  }
}
