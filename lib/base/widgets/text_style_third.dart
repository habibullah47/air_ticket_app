import 'package:flutter/material.dart';

import '../res/styles/app_style.dart';

class TextStyleThird extends StatelessWidget {
  final String text;
  final bool? isColor;

  const TextStyleThird({
    super.key,
    required this.text,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: isColor == null
          ? AppStyle.headlineStyle3.copyWith(
              color: Colors.white,
            )
          : AppStyle.headlineStyle3,
    );
  }
}
