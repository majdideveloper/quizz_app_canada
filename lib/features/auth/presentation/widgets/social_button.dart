


import 'package:flutter/material.dart';

enum SocialButtonType {
  outlined,
  filled,
}

class SocialButton extends StatelessWidget {
  final String text;
  final Widget icon;
  final VoidCallback onPressed;
  final SocialButtonType type;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;

  const SocialButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.onPressed,
    this.type = SocialButtonType.outlined,
    this.backgroundColor,
    this.textColor,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: type == SocialButtonType.outlined 
        ? OutlinedButton.icon(
            icon: icon,
            label: Text(
              text,
              style: TextStyle(
                color: textColor ?? Colors.black87,
                fontSize: 16,
              ),
            ),
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: borderColor ?? Colors.grey[300]!),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          )
        : ElevatedButton.icon(
            icon: icon,
            label: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: textColor ?? Colors.white,
              ),
            ),
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor ?? Colors.blue[700],
              foregroundColor: textColor ?? Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
    );
  }
}