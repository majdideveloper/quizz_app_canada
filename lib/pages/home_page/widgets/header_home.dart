import 'package:flutter/material.dart';
import 'package:quizz_app_canada/core/theme/theme_app.dart';
import 'package:quizz_app_canada/core/widgets/primary_button.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header image
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            'https://oqkmztevjznznzifrdep.supabase.co/storage/v1/object/public/posts//9440461.jpg', // Replace with actual asset
            width: double.infinity,
            height: 180,
            fit: BoxFit.cover,
          ),
        ),

        const SizedBox(height: 16),

        // Title
        Text(
          '__Prepare for your Red Seal Exam with Confidence',
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w700,
            height: 1.4,
          ),
        ),

        const SizedBox(height: 8),

        // Subtitle
        Text(
          '__Try a free quiz and explore training insights',
          style: theme.textTheme.bodyMedium?.copyWith(
            color: Colors.grey[700],
          ),
        ),

        const SizedBox(height: 16),
        PrimaryButton(text: '__Start Free Quiz',onPressed: (){},),
      ],
    );
  }
}
