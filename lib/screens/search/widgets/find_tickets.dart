import 'package:air_ticket_app/base/res/styles/app_style.dart';
import 'package:flutter/material.dart';

class FindTickets extends StatelessWidget {
  const FindTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
      decoration: BoxDecoration(
        color: AppStyle.findTicketColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          'find tickets',
          style: AppStyle.textStyle.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
