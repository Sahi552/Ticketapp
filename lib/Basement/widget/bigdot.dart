import 'package:flutter/material.dart';

class BigDot extends StatelessWidget {
  final bool? isColor;
  const BigDot({super.key, this.isColor = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.5),
      decoration: BoxDecoration(
          border: Border.all(
            color: isColor == true ? Colors.lightBlueAccent : Colors.white,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
