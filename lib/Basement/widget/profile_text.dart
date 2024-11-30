import 'package:flutter/material.dart';
import 'package:ticket/Basement/Res/styles.dart';

class ProfileText extends StatelessWidget {
  final String miles;
  final String plane;
  const ProfileText({super.key, required this.miles, required this.plane});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              miles,
              style: Appstyle.headLine01,
            ),
            Text(
              "miles",
              style: Appstyle.headLine03,
            )
          ],
        ),
        Expanded(child: Container()),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              plane,
              style: Appstyle.headLine01,
            ),
            Text("Received from", style: Appstyle.headLine03),
          ],
        )
      ],
    );
  }
}
