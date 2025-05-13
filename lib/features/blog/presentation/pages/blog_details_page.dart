

import 'package:flutter/material.dart';
import 'package:quizz_app_canada/features/blog/domain/entities/blog_entity.dart';




class BlogDetailsPage extends StatelessWidget {
  final BlogEntity blog;
  
  const BlogDetailsPage({super.key, required this.blog});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(blog.title),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hero image at the top
            if (blog.imagePost != null && blog.imagePost!.isNotEmpty)
              SizedBox(
                width: double.infinity,
                height: 250,
                child: Image.network(
                  blog.imagePost!,
                  fit: BoxFit.cover,
                ),
              )
            else
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.grey[300],
                child: const Center(
                  child: Icon(Icons.image, size: 60, color: Colors.grey),
                ),
              ),
              
            // Content container
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    blog.title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  
                  const SizedBox(height: 8),
                  
                  //! Date and author info if available
                  // if (blog.publishDate != null)
                  //   Padding(
                  //     padding: const EdgeInsets.only(bottom: 16.0),
                  //     child: Text(
                  //       "Published on ${_formatDate(blog.publishDate!)}",
                  //       style: TextStyle(
                  //         fontSize: 14,
                  //         color: Colors.grey[600],
                  //         fontStyle: FontStyle.italic,
                  //       ),
                  //     ),
                  //   ),
                  
                  const Divider(),
                  const SizedBox(height: 16),
                  
                  // Blog content
                  Text(
                    blog.post,
                    style: const TextStyle(
                      fontSize: 16,
                      height: 1.6,
                      color: Colors.black87,
                    ),
                  ),
                  
                  const SizedBox(height: 32),
                  
                  //! Tags or categories if available
                  // if (blog.tags != null && blog.tags!.isNotEmpty)
                  //   Wrap(
                  //     spacing: 8,
                  //     children: blog.tags!.map((tag) => Chip(
                  //       label: Text(tag),
                  //       backgroundColor: Colors.grey[200],
                  //     )).toList(),
                  //   ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  // Helper method to format date
  String _formatDate(DateTime date) {
    return "${date.day}/${date.month}/${date.year}";
  }
}