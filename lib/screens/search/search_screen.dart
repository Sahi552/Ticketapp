import 'package:flutter/material.dart';
import 'package:ticket/Basement/Res/styles.dart';
import 'package:ticket/Basement/widget/event_expand.dart';
import 'package:ticket/Basement/widget/flight.dart';
import 'package:ticket/Basement/widget/ticket_search_btn.dart';
import 'package:ticket/Basement/widget/ticket_search_input.dart';
import 'package:ticket/Basement/widget/switchTab.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Appstyle.primaryColor,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What are \n you looking for?',
                    style: Appstyle.headLine02.copyWith(fontSize: 40),
                  ),
                  const SizedBox(height: 20),
                  const SwitchTab(
                    first: Text('Airline Tickets'),
                    second: Text("Flights"),
                  ),
                  const SizedBox(height: 20),
                  const TicketSearchInput(
                    icon: Icon(Icons.flight_land_outlined),
                    text: 'Arrival',
                  ),
                  const SizedBox(height: 20),
                  const TicketSearchInput(
                    icon: Icon(Icons.flight_takeoff_outlined),
                    text: 'Depature',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TicketSearchBtn(),
                  const SizedBox(
                    height: 20,
                  ),
                  EventExpand(
                    eventName: 'Upcoming Flights',
                    expand: 'view all',
                    func: () {
                      Navigator.pushNamed(context, 'flights card');
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Flight(width: size),
                ],
              ),
            )
          ],
        ));
  }
}
