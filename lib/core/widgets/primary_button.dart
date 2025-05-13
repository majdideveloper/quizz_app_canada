import 'package:flutter/material.dart';
import 'package:quizz_app_canada/core/theme/theme_app.dart';

class PrimaryButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const PrimaryButton({super.key, this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: ThemeApp.secondaryColor,
          foregroundColor: ThemeApp.surfaceColor,
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
