import 'package:flutter/material.dart';
import 'package:ticket/Basement/Res/styles.dart';

class TicketTextInfo extends StatelessWidget {
  final String name;
  final TextAlign align;
  final bool? isColor;
  const TicketTextInfo(
      {super.key,
      required this.name,
      this.align = TextAlign.start,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: Appstyle.headLine03.copyWith(
          color: isColor == null ? Colors.white : const Color(0xFF4e5152)),
      textAlign: align,
    );
  }
}
