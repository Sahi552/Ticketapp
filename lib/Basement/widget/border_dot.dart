import 'package:flutter/material.dart';
import 'package:ticket/Basement/Res/styles.dart';

class BorderDot extends StatelessWidget {
  final bool isRight;
  const BorderDot({super.key, required this.isRight});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 10,
      height: 20,
      child: DecoratedBox(
          decoration: BoxDecoration(
              color: Appstyle.primaryColor,
              borderRadius: isRight == true
                  ? const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12))
                  : const BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12)))),
    );
  }
}
