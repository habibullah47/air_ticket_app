import 'package:flutter/material.dart';
import '../res/styles/app_style.dart';

class TextStyleFourth extends StatelessWidget {
  final String text;
  final bool? isColor;
  final TextAlign textAlign;
  const TextStyleFourth(
      {super.key,
      required this.text,
      this.textAlign = TextAlign.start,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: textAlign,
        style: isColor == null
            ? AppStyle.headlineStyle4.copyWith(
                color: Colors.white,
              )
            : AppStyle.headlineStyle4);
  }
}
