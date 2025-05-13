
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:quizz_app_canada/features/quiz/data/models/course_model.dart';

class CoursePage extends StatelessWidget {
  final CourseModel course;

  const CoursePage({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(course.title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: HtmlWidget(
          course.content,
          textStyle: const TextStyle(fontSize: 16),
          enableCaching: true,
        ),
      ),
    );
  }
}