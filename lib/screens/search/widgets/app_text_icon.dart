import 'package:air_ticket_app/base/res/styles/app_style.dart';
import 'package:flutter/material.dart';

class AppTextIcon extends StatelessWidget {
  const AppTextIcon({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(icon, color: AppStyle.planeColor),
          const SizedBox(width: 10),
          Text(text, style: AppStyle.textStyle),
        ],
      ),
    );
  }
}
