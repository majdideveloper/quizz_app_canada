

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app_canada/core/theme/theme_app.dart';
import 'package:quizz_app_canada/features/quiz/presentation/cubit/quiz/quiz_cubit.dart';
import 'package:quizz_app_canada/features/quiz/presentation/pages/quiz_page.dart';

class JourneyCard extends StatelessWidget {
  const JourneyCard({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      width: double.infinity,
      padding: AppSpacing.cardPadding,
      decoration: BoxDecoration(
        color: colorScheme.primary,
        borderRadius: BorderRadius.circular(AppSpacing.borderRadiusMd),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '__Begin Your Journey',
            style: AppTypography.createHeadingSmall(colorScheme.onPrimary),
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(
            '__Start learning with our comprehensive quiz collection',
            style: AppTypography.createBodyMedium(colorScheme.onPrimary),
          ),
          const SizedBox(height: AppSpacing.md),
          BlocConsumer<QuizCubit, QuizState>(
            listener: (context, state) {
              state.whenOrNull(
                loaded: (questions) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => QuizPage(questions: questions),
                    ),
                  );
                },
                error: (message) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(message)),
                  );
                },
              );
            },
            builder: (context, state) {
              return const StartButton();
            },
          ),
        ],
      ),
    );
  }
}

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return BlocBuilder<QuizCubit, QuizState>(
      builder: (context, state) {
        final isLoading = state.maybeWhen(
          loading: () => true,
          orElse: () => false,
        );

        return ElevatedButton(
          onPressed: isLoading
              ? null
              : () {
                  context.read<QuizCubit>().getTestQuiz();
                },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: colorScheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSpacing.borderRadiusLg),
            ),
          ),
          child: isLoading
              ? const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : Text(
                  '__Start Now',
                  style: AppTypography.createButtonText(colorScheme.primary),
                ),
        );
      },
    );
  }
}