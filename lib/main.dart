import 'package:flutter/material.dart';
import 'package:tutorial_app1/core/bottom_nav_bar.dart';
import 'package:tutorial_app1/screens/home/all_hotels.dart';
import 'package:tutorial_app1/screens/home/all_tickets.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ,
      routes: {
        "/":(context) => const BottomNavBar(),
        "/all_tickets":(context) => const AllTickets(),
        "/all_hotels":(context) => const AllHotels()
      },
    );
  }
}


