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
        padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        image: const DecorationImage(
                            image: AssetImage(Assert.appIcon)),
                        borderRadius: BorderRadius.circular(12)),
                  )
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Row(
                children: [
                  EventExpand(
                    eventName: 'Book Tickets',
                    expand: 'Edit',
                    func: () {},
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
