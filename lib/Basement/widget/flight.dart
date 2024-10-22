import 'package:flutter/material.dart';
import 'package:ticket/Basement/Res/assert.dart';
import 'package:ticket/Basement/Res/styles.dart';

class Flight extends StatelessWidget {
  final double width;
  const Flight({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              Container(
                width: width * .50,
                decoration: BoxDecoration(
                    color: Colors.white60,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(Assert.flight),
                                fit: BoxFit.cover)),
                      ),
                      const Text('1row'),
                      const Text('1row'),
                      const Text('1row'),
                      const Text('1row'),
                    ],
                  ),
                ),
              )
            ],
          ),
          Column(
            children: [
              Center(
                child: Text('bla'),
              )
            ],
          )
        ],
      ),
    );
  }
}
