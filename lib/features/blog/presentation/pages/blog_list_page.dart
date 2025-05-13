import 'package:flutter/material.dart';
import 'package:quizz_app_canada/core/widgets/back_circle_button.dart';

import 'package:quizz_app_canada/features/blog/domain/entities/blog_entity.dart';
import 'package:quizz_app_canada/features/blog/presentation/widgets/blog_list_widget.dart';

class BlogListPage extends StatelessWidget {
  final List<BlogEntity> blogs;

  const BlogListPage({super.key, required this.blogs});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Blogs'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(12.0),
        itemCount: blogs.length,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final blog = blogs[index];

          return TipCard(
            blog: blog,
            onTap: () {
              // Handle preview navigation
              Navigator.pushNamed(
                context,
                '/blog_details_page',
                arguments: blog,
              );
            },
          );
        },
      ),
    );
  }
}
