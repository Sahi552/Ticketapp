import 'package:flutter/material.dart';

class BigDot extends StatelessWidget {
  const BigDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.5),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
