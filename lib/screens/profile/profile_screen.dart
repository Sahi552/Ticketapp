import 'package:flutter/material.dart';
import 'package:ticket/Basement/Res/assert.dart';
import 'package:ticket/Basement/Res/styles.dart';
import 'package:ticket/Basement/widget/event_expand.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appstyle.primaryColor,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                const SizedBox(
                  width: 40,
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
                                Image.asset(Assert.appIcon),
                                const SizedBox(width: 5),
                                Text(
                                  "Premium",
                                  style: Appstyle.headLine03
                                      .copyWith(color: Appstyle.ticketColor1),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
