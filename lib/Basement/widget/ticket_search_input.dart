import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ticket/Basement/Res/styles.dart';

class TicketSearchInput extends StatefulWidget {
  final Icon icon;
  final String text;
  const TicketSearchInput({super.key, required this.icon, required this.text});

  @override
  State<TicketSearchInput> createState() => _TicketSearchInputState();
}

class _TicketSearchInputState extends State<TicketSearchInput> {
  late final TextEditingController _inputController;

  @override
  void initState() {
    super.initState();
    _inputController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        decoration: BoxDecoration(
            color: Colors.white54, borderRadius: BorderRadius.circular(50)),
        child: TextField(
          decoration: InputDecoration(
              icon: widget.icon,
              iconColor: widget.text == 'Arrival'
                  ? Appstyle.ticketColor1
                  : Appstyle.ticketColor2,
              border: InputBorder.none,
              hintText: widget.text,
              hintStyle: Appstyle.headLine01.copyWith(color: Colors.grey)),
        ));
  }
}
