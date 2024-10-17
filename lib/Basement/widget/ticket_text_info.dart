import 'package:flutter/material.dart';
import 'package:ticket/Basement/Res/styles.dart';

class TicketTextInfo extends StatelessWidget {
  final String name;
  final TextAlign align;
  const TicketTextInfo({super.key, required this.name, this.align = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: Appstyle.headLine03.copyWith(color: Colors.white),textAlign: align,
    );
  }
}
