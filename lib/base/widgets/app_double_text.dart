import 'package:air_ticket_app/base/res/styles/app_style.dart';
import 'package:flutter/material.dart';

class AppDoubleText extends StatefulWidget {
  const AppDoubleText(
      {super.key,
      required this.bigText,
      required this.smallText,
      required this.func});

  final String bigText;
  final String smallText;
  final VoidCallback func;

  @override
  State<AppDoubleText> createState() => _AppDoubleTextState();
}

class _AppDoubleTextState extends State<AppDoubleText> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(widget.bigText, style: AppStyle.headlineStyle2),
        InkWell(
            onTap: widget.func,
            child: Text(
              widget.smallText,
              style: AppStyle.textStyle.copyWith(color: AppStyle.primaryColor),
            )),
      ],
    );
  }
}
