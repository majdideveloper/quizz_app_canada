import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app_canada/core/utils/logger.dart';
import 'package:quizz_app_canada/core/widgets/video_player_widget.dart';

import 'package:quizz_app_canada/features/course/domain/entities/course_content_entity.dart';
import 'package:quizz_app_canada/features/course/domain/entities/course_entity.dart';

class CourseDetailsPage extends StatelessWidget {
  final CourseEntity course;

  const CourseDetailsPage({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Course Details')),
      body: _CourseDetails(course: course),
    );
  }
}

class _CourseDetails extends StatelessWidget {
  final CourseEntity course;

  const _CourseDetails({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        if (course.thumbnailUrl != null)
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              course.thumbnailUrl!,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        const SizedBox(height: 16),
        Text(course.title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        if (course.level != null)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Chip(label: Text(course.level!)),
          ),
        if (course.description != null) ...[
          const SizedBox(height: 16),
          Text(course.description!, style: const TextStyle(fontSize: 16)),
        ],
        const SizedBox(height: 24),
        ...course.contents.map(_buildContentItem),
      ],
    );
  }

  Widget _buildContentItem(CourseContentEntity content) {
    switch (content.type) {
      case 'video':
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(content.type,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            const SizedBox(height: 8),
            AspectRatio(
              aspectRatio: 16 / 9,
              child: content.value != null
                  ? VideoPlayerWidget(url: content.value)
                  : const Center(child: Text('Video URL missing')),
            ),
            const SizedBox(height: 16),
          ],
        );
      case 'image':
      AppLogger.logger
          .d('Image URL: ${content.value}'); // Log the image URL
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (content.type.isNotEmpty)
              Text(content.type,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600)),
            const SizedBox(height: 8),
            if (content.value != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  content.value,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            const SizedBox(height: 16),
          ],
        );
      case 'text':
      default:
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(content.type,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600)),
              const SizedBox(height: 8),
              Text(content.value ?? ''),
            ],
          ),
        );
    }
  }
}
