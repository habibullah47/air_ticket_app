import 'package:air_ticket_app/base/res/styles/app_style.dart';
import 'package:air_ticket_app/base/utils/all_routes.dart';
import 'package:air_ticket_app/base/widgets/app_double_text.dart';
import 'package:air_ticket_app/screens/search/widgets/app_text_icon.dart';
import 'package:air_ticket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:air_ticket_app/screens/search/widgets/find_tickets.dart';
import 'package:flutter/material.dart';

import 'widgets/ticket_promotion.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(height: 40),
          Text(
            'What are \nyou looking for?',
            style: AppStyle.headlineStyle1.copyWith(fontSize: 35),
          ),
          const SizedBox(height: 20),
          const AppTicketTabs(
            firsTab: 'Airline Tickets',
            secondTab: 'Hotels',
          ),
          const SizedBox(height: 25),
          const AppTextIcon(
            icon: Icons.flight_takeoff_rounded,
            text: 'Departure',
          ),
          const SizedBox(height: 20),
          const AppTextIcon(
            icon: Icons.flight_land_rounded,
            text: 'Arrival',
          ),
          const SizedBox(height: 25),
          const FindTickets(),
          const SizedBox(height: 40),
          AppDoubleText(
              bigText: 'Upcoming Flights',
              smallText: 'View all',
              func: (() {
                Navigator.pushNamed(context, AllRoutes.tickest);
              })),
          const SizedBox(height: 20),
          const TicketPromotion(),
        ],
      ),
    );
  }
}
