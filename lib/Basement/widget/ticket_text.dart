import 'package:flutter/material.dart';
import 'package:ticket/Basement/Res/styles.dart';

class TicketText extends StatelessWidget {
  final String name;
  const TicketText({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: Appstyle.headLine01.copyWith(color: Colors.white),
    );
  }
}
