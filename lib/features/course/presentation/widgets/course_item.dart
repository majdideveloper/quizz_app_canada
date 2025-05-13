import 'package:flutter/material.dart';
import 'package:quizz_app_canada/core/widgets/primary_button.dart';

class CourseItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String level;
  final Color levelColor;
  final String description;
  final VoidCallback onTap;

  const CourseItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.level,
    required this.levelColor,
    required this.description,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.network(imageUrl,
                height: 180, width: double.infinity, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(title,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: levelColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        level,
                        style: TextStyle(
                            color: levelColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 12),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(description,
                    style:
                        const TextStyle(fontSize: 14, color: Colors.black87)),
                const SizedBox(height: 16),
                PrimaryButton(
                  onPressed: onTap,
                  text: 'Enter Course',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
