import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ticket/Basement/Res/assert.dart';
import 'package:ticket/Basement/Res/styles.dart';

class Hotel extends StatelessWidget {
  const Hotel({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 350,
      width: size.width * 0.6,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Appstyle.ticketColor1),
      child: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image:
                    const DecorationImage(image: AssetImage(Assert.appIcon),fit: BoxFit.contain)),
          ),
        ],
      ),
    );
  }
}
