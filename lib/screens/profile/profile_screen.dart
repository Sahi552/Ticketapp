import 'package:flutter/material.dart';
import 'package:ticket/Basement/Res/assert.dart';
import 'package:ticket/Basement/Res/styles.dart';
import 'package:ticket/Basement/widget/event_expand.dart';
import 'package:ticket/Basement/widget/profile_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appstyle.primaryColor,
      body: ListView(
        padding: const EdgeInsets.all(15),
        scrollDirection: Axis.vertical,
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        image: const DecorationImage(
                            image: AssetImage(Assert.appIcon)),
                        borderRadius: BorderRadius.circular(12)),
                  )
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EventExpand(
                      eventName: 'Book Tickets',
                      expand: 'Edit',
                      func: () {},
                    ),
                    Text(
                      "New-York",
                      style: Appstyle.headLine03,
                    ),
                    const SizedBox(height: 5),
                    Container(
                      width: 100,
                      height: 25,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Appstyle.hotelText,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Appstyle.paleblue,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "Premium",
                            style: Appstyle.headLine03
                                .copyWith(color: Appstyle.blue),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Appstyle.paleblue,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.lightbulb_outline_rounded,
                        color: Appstyle.blue,
                        size: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "you got a new reward",
                          style: Appstyle.headLine02
                              .copyWith(color: Appstyle.hotelText),
                        ),
                        Text(
                          "You got 250 flights in a year",
                          style: Appstyle.headLine01
                              .copyWith(color: Appstyle.hotelText),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: -30,
                top: -30,
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(color: Appstyle.blue, width: 10),
                      shape: BoxShape.circle),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Accumulated miles",
            style: Appstyle.headLine02.copyWith(color: Appstyle.textColor),
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: Text(
              "194637",
              style: Appstyle.headLine05,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Text(
                "Miles accured",
                style: Appstyle.headLine03.copyWith(fontSize: 20),
              ),
              Expanded(child: Container()),
              Text("23 May 2023",
                  style: Appstyle.headLine03.copyWith(fontSize: 20))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const ProfileText(
            miles: '30',
            plane: 'Airline CO',
          ),
          const SizedBox(
            height: 20,
          ),
          const ProfileText(
            miles: '30',
            plane: 'Airline CO',
          ),
          const SizedBox(
            height: 20,
          ),
          const ProfileText(
            miles: '30',
            plane: 'Airline CO',
          ),
          const SizedBox(
            height: 20,
          ),
          const ProfileText(
            miles: '30',
            plane: 'Airline CO',
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "How to get more miles?",
              style: Appstyle.headLine01.copyWith(color: Appstyle.paleblue),
            ),
          )
        ],
      ),
    );
  }
}
