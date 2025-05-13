import 'package:flutter/material.dart';
import 'package:quizz_app_canada/core/theme/theme_app.dart';
import 'package:quizz_app_canada/core/widgets/primary_button.dart';
import 'package:quizz_app_canada/core/widgets/secondry_button.dart';

class SignInSection extends StatelessWidget {
  const SignInSection({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: double.infinity,
      height: 200,
      padding: AppSpacing.cardPadding,
      decoration: BoxDecoration(
        color: colorScheme.primary,
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '__Unlock full access with more quizzes and guides',
              textAlign: TextAlign.center,
              style: textTheme.bodyLarge?.copyWith(
                color: colorScheme.surface,
              ),
            ),
            PrimaryButton(
              text: '__Create Account',
              onPressed: () => Navigator.pushNamed(context, '/register'),
            ),
            SecondryButton(
              text: '__Sign In',
              onPressed: () => Navigator.pushNamed(context, '/login'),
              color: colorScheme.surface,
            ),
          ]),
    );
  }
}
