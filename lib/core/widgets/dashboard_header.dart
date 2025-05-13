import 'package:flutter/material.dart';
import 'package:quizz_app_canada/core/theme/theme_app.dart';

class DashboardHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  const DashboardHeader(
      {super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Padding(
        padding: AppSpacing.screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: AppSpacing.sm,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.primary),
            ),
            Text(
              subtitle,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
