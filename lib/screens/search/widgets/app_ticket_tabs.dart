import 'package:flutter/material.dart';

import 'app_tabs.dart';

class AppTicketTabs extends StatelessWidget {
  final String firsTab;
  final String secondTab;
  const AppTicketTabs({
    super.key,
    required this.firsTab,
    required this.secondTab,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xFFF4F6FD),
      ),
      child: Row(
        children: [
          BookingOptions(
            bookingText: firsTab,
            activeColor: true,
            tabBorder: false,
          ),
          BookingOptions(
            bookingText: secondTab,
            activeColor: false,
            tabBorder: true,
          )
        ],
      ),
    );
  }
}
