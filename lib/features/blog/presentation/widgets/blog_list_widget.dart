import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app_canada/core/theme/theme_app.dart';
import 'package:quizz_app_canada/core/utils/logger.dart';

import 'package:quizz_app_canada/features/blog/domain/entities/blog_entity.dart';

import 'package:quizz_app_canada/features/blog/presentation/cubit/blog_cubit.dart';

class BlogListWidget extends StatelessWidget {
  const BlogListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<BlogCubit, BlogState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Center(child: CircularProgressIndicator()),
          loading: () => const Center(child: CircularProgressIndicator()),
          failure: (errorMessage) => Center(child: Text(errorMessage)),
          loaded: (blogs) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Section Title
                Row(
                  children: [
                    Text(
                      '__Tips for Future Electricians',
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (blogs.length > 1)
                      TextButton(
                        onPressed: () => Navigator.pushNamed(
                          context,
                          '/blog_list_page',
                          arguments: blogs,
                        ),
                        child: Text('__view all >',
                            style: theme.textTheme.bodySmall),
                      )
                  ],
                ),

                // First Tip Card
                TipCard(
                  blog: blogs[0],
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/blog_details_page',
                      arguments: blogs[0],
                    );
                  },
                ),
                const SizedBox(height: 12),

                // Second Tip Card
                TipCard(
                  blog: blogs[1],
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/blog_details_page',
                      arguments: blogs[1],
                    );
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }
}

// New BlogCard widget to display image, title and 3 lines of text
class BlogCard extends StatelessWidget {
  final BlogEntity blog;

  const BlogCard({
    super.key,
    required this.blog,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
        context,
        '/blog_details_page',
        arguments: blog,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width / 2.5,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Blog image
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(10)),
              child: blog.imagePost != null && blog.imagePost!.isNotEmpty
                  ? Image.network(
                      blog.imagePost!,
                      height: 120,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )
                  : Container(
                      height: 120,
                      width: double.infinity,
                      color: Colors.grey[300],
                      child: const Icon(Icons.image, size: 40),
                    ),
            ),
            // Blog title and post preview
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    blog.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    blog.post,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 14,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// This secion of BLOGS
class TipsSection extends StatelessWidget {
  const TipsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Section Title
        Row(
          children: [
            Text(
              '__Tips for Future Electricians',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text('__view all >', style: theme.textTheme.bodySmall),
            )
          ],
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}

// Reusable Tip Card
class TipCard extends StatelessWidget {
  final BlogEntity blog;
  final VoidCallback onTap;

  const TipCard({
    super.key,
    required this.blog,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(0, 2),
            )
          ],
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: AppSpacing.sm,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            blog.imagePost != null && blog.imagePost!.isNotEmpty
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      blog.imagePost!,
                      width: double.infinity,
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  )
                : SizedBox.shrink(),
            Text(
              blog.title,
              style: theme.textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              blog.post,
              style: theme.textTheme.bodySmall?.copyWith(height: 1.4),
              maxLines: 3,
            ),
            Text(
              'Preview >',
              style: theme.textTheme.labelLarge?.copyWith(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
