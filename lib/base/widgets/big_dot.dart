import 'package:air_ticket_app/base/res/styles/app_style.dart';
import 'package:flutter/material.dart';

class BigDot extends StatelessWidget {
  final bool? isColor;
  const BigDot({super.key, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.transparent,
        border: Border.all(
          color: isColor == null ? Colors.white : AppStyle.bigDotColor,
          width: 2.5,
        ),
      ),
    );
  }
}
