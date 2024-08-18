import 'package:air_ticket_app/base/res/media.dart';
import 'package:air_ticket_app/base/res/styles/app_style.dart';
import 'package:air_ticket_app/base/utils/all_json.dart';
import 'package:air_ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:air_ticket_app/base/widgets/app_layout_builder_widget.dart';
import 'package:air_ticket_app/base/widgets/ticket_view.dart';
import 'package:air_ticket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:air_ticket_app/screens/ticket/widget/ticket_cicle_avatar.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({
    super.key,
  });

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  late int ticketIndex = 0;

  @override
  void didChangeDependencies() {
    //Todo: Sometimes a null error appears on this line.
    if (ModalRoute.of(context)!.settings.arguments != null) {
      var args = ModalRoute.of(context)!.settings.arguments as Map;

      ticketIndex = args["index"];
    }

    //print('Passed index ${args['index']}');

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Ticket'),
        ),
        backgroundColor: AppStyle.bgColor,
      ),
      backgroundColor: AppStyle.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              //const SizedBox(height: 40),
              //Text('Tickets', style: AppStyle.headlineStyle1),
              //const SizedBox(height: 20),
              const AppTicketTabs(
                firsTab: 'Upcoming',
                secondTab: 'Previous',
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  children: [
                    TicketView(
                      ticket: ticketList[ticketIndex],
                      isColor: true,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 1),
              Container(
                color: AppStyle.ticketColor,
                margin: const EdgeInsets.symmetric(horizontal: 27),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          topText: 'Flutter DB',
                          bottomText: 'Passenger',
                          align: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumnTextLayout(
                          topText: '3421 548796',
                          bottomText: 'Passport',
                          align: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const AppLayoutBuilderWidget(
                      randomDivider: 10,
                      isColor: false,
                      width: 5,
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          topText: '365455 78456254',
                          bottomText: 'Number of E-Ticket',
                          align: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumnTextLayout(
                          topText: 'B67G89',
                          bottomText: 'Booking Code',
                          align: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const AppLayoutBuilderWidget(
                      randomDivider: 10,
                      isColor: false,
                      width: 5,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Column for visa card
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  AppMedia.visaCard,
                                  scale: 11,
                                ),
                                Text(
                                  ' *** 2462',
                                  style: AppStyle.headlineStyle3,
                                )
                              ],
                            ),
                            const SizedBox(height: 5),
                            Text('Pyment Method',
                                style: AppStyle.headlineStyle4),
                          ],
                        ),

                        const AppColumnTextLayout(
                          topText: '\$249.99',
                          bottomText: 'Price',
                          align: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 1),

              //Bottom of the ticket detail section
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 27),
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: AppStyle.ticketColor,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(21),
                    bottomLeft: Radius.circular(21),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Center(
                      child: BarcodeWidget(
                        height: 70,
                        width: double.infinity,
                        data: 'Ahmed Habibullah',
                        drawText: false,
                        barcode: Barcode.code128(),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  children: [
                    TicketView(
                      ticket: ticketList[ticketIndex],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const TicketCicleAvatar(),
          const TicketCicleAvatar(pos: true),
        ],
      ),
    );
  }
}
