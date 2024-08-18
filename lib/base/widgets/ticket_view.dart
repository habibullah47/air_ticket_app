import 'dart:math';

import 'package:air_ticket_app/base/res/styles/app_style.dart';
import 'package:air_ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:air_ticket_app/base/widgets/app_layout_builder_widget.dart';
import 'package:air_ticket_app/base/widgets/big_dot.dart';
import 'package:air_ticket_app/base/widgets/text_style_fourth.dart';
import 'package:air_ticket_app/base/widgets/text_style_third.dart';
import 'package:flutter/material.dart';

import 'big_radius_circle.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final bool? isColor;

  const TicketView(
      {super.key,
      required this.ticket,
      this.wholeScreen = false,
      this.isColor});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      //Todo: change height to 189
      height: 196,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
        child: Column(
          children: [
            //This is the blue part of ticket
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: isColor == null
                    ? AppStyle.ticketBlue
                    : AppStyle.ticketColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Column(children: [
                //show departure and destination with icons first line
                Row(
                  children: [
                    //SizedBox(width: 20),
                    TextStyleThird(
                      text: ticket["from"]["code"],
                      isColor: isColor,
                    ),
                    Expanded(child: Container()),
                    BigDot(isColor: isColor),
                    Expanded(
                      child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayoutBuilderWidget(randomDivider: 6),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: pi / 2,
                              child: Icon(Icons.flight_rounded,
                                  color: isColor == null
                                      ? Colors.white
                                      : AppStyle.planeSecondColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                    BigDot(
                      isColor: isColor,
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    TextStyleThird(
                      text: ticket["to"]["code"],
                      isColor: isColor,
                    ),
                  ],
                ),
                const SizedBox(height: 3),
                //show departure and destination names with time.
                Row(
                  children: [
                    //SizedBox(width: 20),
                    SizedBox(
                      width: 100,
                      child: TextStyleFourth(
                        text: ticket["from"]["name"],
                        isColor: isColor,
                      ),
                    ),
                    Expanded(child: Container()),
                    TextStyleFourth(
                      text: ticket["flying_time"],
                      isColor: isColor,
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    SizedBox(
                      width: 100,
                      child: TextStyleFourth(
                        text: ticket["to"]["name"],
                        textAlign: TextAlign.end,
                        isColor: isColor,
                      ),
                    ),
                  ],
                ),
              ]),
            ),
            //This is the big circle part of the ticket
            Container(
              color: isColor == null
                  ? AppStyle.ticketOrange
                  : AppStyle.ticketColor,
              child: Row(
                children: [
                  BigCircle(
                    isRight: false,
                    isColor: isColor,
                  ),
                  Expanded(
                      child: AppLayoutBuilderWidget(
                    randomDivider: 16,
                    width: 6,
                    isColor: isColor,
                  )),
                  BigCircle(isRight: true, isColor: isColor),
                ],
              ),
            ),
            //This is the orange part of ticket
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: isColor == null
                    ? AppStyle.ticketOrange
                    : AppStyle.ticketColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                  bottomRight: Radius.circular(isColor == null ? 21 : 0),
                ),
              ),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      align: CrossAxisAlignment.start,
                      topText: ticket["date"],
                      bottomText: 'Date',
                      isColor: isColor,
                    ),
                    AppColumnTextLayout(
                      align: CrossAxisAlignment.center,
                      topText: ticket["departure_time"],
                      bottomText: 'Departure Time',
                      isColor: isColor,
                    ),
                    AppColumnTextLayout(
                      align: CrossAxisAlignment.end,
                      topText: ticket["number"].toString(),
                      bottomText: 'Number',
                      isColor: isColor,
                    ),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
