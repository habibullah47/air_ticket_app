import 'package:air_ticket_app/base/res/styles/app_style.dart';
import 'package:flutter/material.dart';

class Hotel extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const Hotel({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(right: 20),
      height: 350,
      width: size.width * 0.6,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: AppStyle.primaryColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppStyle.primaryColor,
              image: DecorationImage(
                  image: AssetImage("assets/images/${hotel['image']}"),
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              hotel['place'],
              style:
                  AppStyle.headlineStyle1.copyWith(color: AppStyle.kakiColor),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(hotel['destination'],
                style: AppStyle.headlineStyle3.copyWith(color: Colors.white)),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text("\$${hotel['price']}/night",
                style: AppStyle.headlineStyle1
                    .copyWith(color: AppStyle.kakiColor)),
          ),
        ],
      ),
    );
  }
}
