import 'package:air_ticket_app/base/utils/all_json.dart';
import 'package:air_ticket_app/base/res/media.dart';
import 'package:air_ticket_app/base/res/styles/app_style.dart';
import 'package:air_ticket_app/base/utils/all_routes.dart';
import 'package:air_ticket_app/base/widgets/app_double_text.dart';
import 'package:air_ticket_app/base/widgets/ticket_view.dart';
import 'package:air_ticket_app/screens/home/widgets/hotel.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 40),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good Morning',
                        style: AppStyle.headlineStyle3,
                      ),
                      Text('Book Tickets', style: AppStyle.headlineStyle1),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage(AppMedia.logo),
                        )),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: const Row(
                  children: [
                    Icon(
                      FluentSystemIcons.ic_fluent_search_regular,
                      color: Color(0xFFBFC205),
                    ),
                    Text('Search'),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              AppDoubleText(
                bigText: 'Upcoming tickets',
                smallText: 'View all',
                func: () => Navigator.pushNamed(context, AllRoutes.tickest),
              ),

              const SizedBox(height: 20),

              //Todo: SingleChildScrollView is not working as expected 6:13:11
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: ticketList.map(
                    // deleting [.take(5)] from here
                    (singleTicket) {
                      return TicketView(
                        ticket: singleTicket,
                      );
                    },
                  ).toList(),
                ),
              ),
              const SizedBox(height: 20),
              AppDoubleText(
                bigText: 'Hotels',
                smallText: 'View all',
                func: () => Navigator.pushNamed(context, AllRoutes.hotels),
              ),
              const SizedBox(height: 20),

              //Todo: SingleChildScrollView is not working as expected 7:25:42, May be chrome problem
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: hotelList.map(
                    (singleHotel) {
                      return Hotel(
                        hotel: singleHotel,
                      );
                    },
                  ).toList(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
