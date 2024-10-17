import 'package:flutter/material.dart';
import 'package:ticket/Basement/bottom_nav_bar.dart';
import 'package:ticket/screens/all_tickets.dart';

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
        "allTickets": (context) => const AllTickets()
      },
    );
  }
}
