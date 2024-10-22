import 'package:flutter/material.dart';

class TabCtrl extends StatelessWidget {
  final width;
  final bool isright;
  const TabCtrl({super.key, required this.width, required this.isright});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6),
      width: width * 0.46,
      decoration: BoxDecoration(
          color: isright == true ? Colors.white54 : const Color(0xFFeeecec),
          borderRadius: BorderRadius.horizontal(
            right: isright == true ? const Radius.circular(50) : Radius.zero,
            left: isright == true ? Radius.zero : const Radius.circular(50),
          )),
      child: Center(
          child: isright == true
              ? const Text('Flights')
              : const Text('Airline Tickets')),
    );
  }
}
