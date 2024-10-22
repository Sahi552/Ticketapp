import 'package:flutter/material.dart';
import 'package:ticket/Basement/Res/styles.dart';

class EventExpand extends StatelessWidget {
  const EventExpand(
      {super.key,
      required this.eventName,
      required this.expand,
      required this.func});
  final String eventName;
  final String expand;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          eventName,
          style: Appstyle.headLine01.copyWith(fontWeight: FontWeight.w400),
        ),
        InkWell(
          onTap: func,
          child: Text(
            expand,
            style: Appstyle.headLine01.copyWith(color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
