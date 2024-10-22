import 'package:flutter/material.dart';
import 'package:ticket/screens/search/tab_ctrl.dart';

class TicketTab extends StatelessWidget {
  const TicketTab({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      padding: const EdgeInsets.all(1.2),
      decoration: BoxDecoration(
          color: const Color(0xFFeeecec),
          borderRadius: BorderRadius.circular(50)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TabCtrl(width: width, isright: false),
          TabCtrl(width: width, isright: true),
        ],
      ),
    );
  }
}
