import 'package:flutter/material.dart';
import 'package:ticket/Basement/Res/styles.dart';

class TicketSearchBtn extends StatelessWidget {
  const TicketSearchBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Appstyle.ticketColor1,
          borderRadius: BorderRadius.circular(50)),
      child: Center(
          child: Text(
        'Find Tickets',
        style: Appstyle.headLine01.copyWith(color: Colors.white),
      )),
    );
  }
}
