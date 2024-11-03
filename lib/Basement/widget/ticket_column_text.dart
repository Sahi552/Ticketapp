import 'package:flutter/material.dart';
import 'package:ticket/Basement/widget/ticket_text.dart';
import 'package:ticket/Basement/widget/ticket_text_info.dart';

class TicketColumnText extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  final bool? isColor;
  const TicketColumnText(
      {super.key,
      required this.topText,
      required this.bottomText,
      this.alignment = CrossAxisAlignment.center,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TicketText(
          name: topText,
          isColor: isColor == null ? null : true,
        ),
        const SizedBox(
          height: 3,
        ),
        TicketTextInfo(
          name: bottomText,
          isColor: isColor == null ? null : true,
        )
      ],
    );
  }
}
