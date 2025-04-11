


import 'package:flutter/material.dart';
import 'package:quizz_app_canada/core/theme/theme_app.dart';

class SignInSection extends StatelessWidget {
  const SignInSection({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: double.infinity,
      padding: AppSpacing.cardPadding,
      decoration: BoxDecoration(
        color: colorScheme.surfaceBright,
        borderRadius: BorderRadius.circular(AppSpacing.borderRadiusMd),
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: AppSpacing.sm,
          children: [
            Text(
              '__Sign In to Track Progress',
              style: textTheme.displaySmall,
            ),
            const SizedBox(height: AppSpacing.xs),
            Text(
              '__Keep track of your learning journey and sync your progress across devices',
              textAlign: TextAlign.center,
              style: textTheme.bodyMedium,
            ),
            const SignInButton(),
            const CreateAccountButton(),
          ]),
    );
  }
}

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('__Sign In'),
      ),
    );
  }
}

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () {},
        child: const Text('__Create Account'),
      ),
    );
  }
}