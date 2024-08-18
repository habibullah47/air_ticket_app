import 'package:flutter/material.dart';

import '../../../base/res/media.dart';
import '../../../base/res/styles/app_style.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: size.width * 0.42,
          height: 415,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                spreadRadius: 2,
                blurRadius: 1,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: AssetImage(AppMedia.planeSit),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                '20%\ndiscount on\nthe early\nbooking of \nthe flight. \nDon\'t miss',
                style: AppStyle.headlineStyle2,
              )
            ],
          ),
        ),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  width: size.width * .44,
                  height: 210,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: const Color(0xFF3AB8B8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Discount \nfor surveys',
                        style: AppStyle.headlineStyle2.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Take the survey \nabout our \nservice and \nget dicscount',
                        style: AppStyle.headlineStyle3.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppStyle.styleCircleColor,
                        width: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              width: size.width * .44,
              height: 210,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: const Color(0xFFEC6545),
              ),
              child: Column(
                children: [
                  Text(
                    'Take love',
                    style: AppStyle.headlineStyle2.copyWith(
                      color: Colors.white,
                    ),
                  ),

                  //from myself
                  const Text(
                    '🙂😍😃',
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
