import 'package:flutter/material.dart';

class AppLayout extends StatelessWidget {
  final int randomDivider;
  final double width;
  const AppLayout({super.key, required this.randomDivider, this.width = 3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            direction: Axis.horizontal,
            children: List.generate(
              (constraints.constrainWidth() / randomDivider).floor(),
              (index) => SizedBox(
                height: 1,
                width: width,
                child: const DecoratedBox(
                    decoration: BoxDecoration(
                  color: Colors.white,
                )),
              ),
            ));
      },
    );
  }
}
