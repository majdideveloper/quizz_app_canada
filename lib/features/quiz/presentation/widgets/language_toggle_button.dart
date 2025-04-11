import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app_canada/core/locale_cubit/locale_cubit.dart';


class LanguageToggleButton extends StatelessWidget {
  const LanguageToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    final localeCubit = context.read<LocaleCubit>();
    return IconButton(
      icon: const Icon(Icons.language),
      onPressed: () {
        if (localeCubit.state == const Locale('en')) {
          localeCubit.switchToFrench();
        } else {
          localeCubit.switchToEnglish();
        }
      },
    );
  }
}
