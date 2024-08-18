import 'package:flutter/material.dart';

class BookingOptions extends StatelessWidget {
  const BookingOptions(
      {super.key,
      required this.activeColor,
      required this.bookingText,
      required this.tabBorder});

  final bool activeColor;
  final String bookingText;
  final bool tabBorder;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      width: size.width * .45,
      decoration: BoxDecoration(
        borderRadius: tabBorder == false
            ? const BorderRadius.horizontal(
                left: Radius.circular(50),
              )
            : const BorderRadius.horizontal(
                right: Radius.circular(50),
              ),
        color: activeColor ? Colors.white : Colors.transparent,
      ),
      child: Center(child: Text(bookingText)),
    );
  }
}
