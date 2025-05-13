import 'package:flutter/material.dart';
import 'package:quizz_app_canada/core/theme/theme_app.dart';

class BackCircleButton extends StatelessWidget {
  const BackCircleButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return CircleAvatar(
      radius: 20, // Reduced from 16 to 12 (25% smaller)
      backgroundColor: theme.colorScheme.surface,
      child: IconButton(
        padding: EdgeInsets.zero,
        // constraints: const BoxConstraints(),
        iconSize: 20, // Reduced proportionally
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back_ios,
          color: theme.colorScheme.secondary,
          size: 20, // Explicit size for the Icon widget
        ),
      ),
    );
  }
}
