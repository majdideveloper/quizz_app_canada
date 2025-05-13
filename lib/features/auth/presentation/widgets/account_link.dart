import 'package:flutter/material.dart';



class AccountLink extends StatelessWidget {
  final String message;
  final String linkText;
  final VoidCallback onTap;
  final Color? linkColor;

  const AccountLink({
    Key? key,
    required this.message,
    required this.linkText,
    required this.onTap,
    this.linkColor = Colors.orange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: message,
              style: const TextStyle(color: Colors.black),
            ),
            WidgetSpan(
              child: GestureDetector(
                onTap: onTap,
                child: Text(
                  linkText,
                  style: TextStyle(
                    color: linkColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}