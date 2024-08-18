import 'package:air_ticket_app/base/res/styles/app_style.dart';
import 'package:air_ticket_app/base/utils/all_json.dart';
import 'package:air_ticket_app/base/utils/all_routes.dart';
import 'package:air_ticket_app/base/widgets/ticket_view.dart';
import 'package:flutter/material.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      appBar: AppBar(
        title: const Center(
          child: Text('All Tickets'),
        ),
        backgroundColor: AppStyle.bgColor,
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList
                  .map(
                    (singleTicket) => Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: GestureDetector(
                        onTap: () {
                          var index = ticketList.indexOf(singleTicket);
                          Navigator.pushNamed(context, AllRoutes.ticketScreen,
                              arguments: {
                                "index": index,
                              });
                        },
                        child: TicketView(
                          ticket: singleTicket,
                          wholeScreen: true,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
