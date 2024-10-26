import 'package:flutter/material.dart';
import 'package:ticket/Basement/bottom_nav_bar.dart';
import 'package:ticket/screens/home/all_hotels.dart';
import 'package:ticket/screens/home/all_tickets.dart';
import 'package:ticket/screens/search/flights_cards.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const BottomNav(),
        "allTickets": (context) => const AllTickets(),
        "allHotels": (context) => const AllHotels(),
        "flights card": (context) => const FlightsCards()
      },
    );
  }
}
