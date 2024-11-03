import 'package:flutter/material.dart';
import 'package:ticket/Basement/Res/styles.dart';

class TicketText extends StatelessWidget {
  final String name;
  final bool? isColor;
  const TicketText({super.key, required this.name, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: Appstyle.headLine01
          .copyWith(color: isColor == null ? Colors.white : Colors.black),
    );
  }
}
