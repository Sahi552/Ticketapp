import 'package:flutter/material.dart';
import 'package:ticket/Basement/Res/assert.dart';
import 'package:ticket/Basement/Res/styles.dart';

class Flight extends StatelessWidget {
  final double width;
  const Flight({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Container(
              width: width * .44,
              height: 357,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 3,
                        spreadRadius: 3)
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                              image: AssetImage(Assert.flight),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      '20% discount on this flight for the following two months',
                      style: Appstyle.headLine02,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        Column(
          children: [
            Stack(children: [
              Container(
                width: width * .44,
                height: 168,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    color: Appstyle.ticketColor1,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 3,
                          spreadRadius: 3)
                    ]),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Discount \nfor survey',
                        style: Appstyle.headLine02.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Take the survey about our services and get rewards',
                        style: Appstyle.headLine01
                            .copyWith(color: Colors.white, fontSize: 18),
                      )
                    ]),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
              )
            ]),
            const SizedBox(
              height: 20,
            ),
            Stack(children: [
              Container(
                width: width * .44,
                height: 168,
                decoration: BoxDecoration(
                    color: Appstyle.ticketColor2,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 3,
                          spreadRadius: 3)
                    ]),
                child: Center(
                    child: Text(
                  'Stay Happy \n Ride Happy',
                  style: Appstyle.headLine02.copyWith(color: Colors.white),
                )),
              ),
              Positioned(
                left: 130,
                bottom: 120,
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 10),
                      shape: BoxShape.circle),
                ),
              )
            ])
          ],
        )
      ],
    );
  }
}
