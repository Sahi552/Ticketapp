import 'package:flutter/material.dart';

class SwitchTab extends StatelessWidget {
  final Text first;
  final Text second;
  const SwitchTab({super.key, required this.first, required this.second});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      padding: const EdgeInsets.all(1.2),
      decoration: BoxDecoration(
          color: const Color(0xFFe3ebf0),
          borderRadius: BorderRadius.circular(50)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 6),
            width: width * 0.46,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomLeft: Radius.circular(50))),
            child: Center(
              child: first,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 6),
            width: width * 0.46,
            decoration: const BoxDecoration(
                color: Color(0xFFeff5f9),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            child: Center(
              child: second,
            ),
          ),
        ],
      ),
    );
  }
}
