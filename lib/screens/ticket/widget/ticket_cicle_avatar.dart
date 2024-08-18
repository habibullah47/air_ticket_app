import 'package:air_ticket_app/base/res/styles/app_style.dart';
import 'package:flutter/material.dart';

class TicketCicleAvatar extends StatelessWidget {
  final bool? pos;
  const TicketCicleAvatar({super.key, this.pos});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: pos == true ? 32 : null,
      right: pos == true ? null : 32,
      top: 259,
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 2),
        ),
        child: CircleAvatar(
          radius: 4,
          backgroundColor: AppStyle.textColor,
        ),
      ),
    );
  }
}
