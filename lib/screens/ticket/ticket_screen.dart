import 'package:flutter/material.dart';
import 'package:ticket/Basement/Res/styles.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Text(
            'Tickets',
            style: Appstyle.headLine02.copyWith(fontSize: 40),
          )
        ],
      ),
    );
  }
}
