import 'package:air_ticket_app/base/bottom_nav_bar.dart';
import 'package:air_ticket_app/base/utils/all_routes.dart';
import 'package:air_ticket_app/screens/home/all_hotels.dart';
import 'package:air_ticket_app/screens/hotel_detail.dart';
import 'package:air_ticket_app/screens/ticket/ticket_screen.dart';
import 'package:flutter/material.dart';
import 'screens/home/all_tickets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //Sometime Widget error detected for routes
      routes: {
        "/": (context) => const BottomNavBar(),
        AllRoutes.tickest: (context) => const AllTickets(),
        AllRoutes.hotels: (context) => const AllHotels(),
        AllRoutes.ticketScreen: (context) => const TicketScreen(),
        AllRoutes.hotelDetail: (context) => const HotelDetail(),
      },
    );
  }
}
