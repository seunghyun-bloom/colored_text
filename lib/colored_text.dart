library colored_text;

import 'package:flutter/material.dart';

class ColoredText extends StatelessWidget {
  final String data;
  final Color color;
  final double fontSize;
  final TextStyle? textStyle;
  const ColoredText(
    this.data, {
    super.key,
    required this.color,
    this.fontSize = 14,
    this.textStyle,
  });

  Size getTextSize({
    required String text,
    required TextStyle style,
    required BuildContext context,
  }) {
    final Size size = (TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: 1,
      textScaleFactor: MediaQuery.of(context).textScaleFactor,
      textDirection: TextDirection.ltr,
    )..layout())
        .size;
    return size;
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle style = textStyle ??
        TextStyle(
          fontSize: fontSize,
          color: color,
          fontWeight: FontWeight.bold,
        );
    final Size textSize = getTextSize(
      text: data,
      style: style,
      context: context,
    );
    return Stack(
      children: [
        Text(data, style: style),
        Positioned(
          top: textSize.height / 2,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: color.withOpacity(0.2),
            ),
            height: textSize.height / 2,
            width: textSize.width,
          ),
        )
      ],
    );
  }
}
