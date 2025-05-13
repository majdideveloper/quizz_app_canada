


import 'package:flutter/material.dart';

class DividerWithText extends StatelessWidget {
  final String text;
  final EdgeInsetsGeometry padding;
  final Color dividerColor;
  final TextStyle? textStyle;

  const DividerWithText({
    Key? key,
    required this.text,
    this.padding = const EdgeInsets.symmetric(vertical: 16.0),
    this.dividerColor = Colors.grey,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        children: [
          Expanded(child: Divider(color: dividerColor)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              text,
              style: textStyle ?? TextStyle(color: dividerColor),
            ),
          ),
          Expanded(child: Divider(color: dividerColor)),
        ],
      ),
    );
  }
}