import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket/Basement/Res/assert.dart';
import 'package:ticket/Basement/Res/styles.dart';
import 'package:ticket/Basement/Utils/hotel_json.dart';
import 'package:ticket/Basement/Utils/ticket_json.dart';
import 'package:ticket/Basement/widget/event_expand.dart';
import 'package:ticket/Basement/widget/ticket.dart';
import 'package:ticket/screens/home/hotel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appstyle.primaryColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                //Headline
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good morning',
                          style: Appstyle.headLine01,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Ticket Booking',
                          style: Appstyle.headLine02,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: AssetImage(Assert.appIcon))),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20),
                //search bar
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xFFF4F6FD),
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 12),
                        child: Row(
                          children: [
                            const Icon(
                              FluentSystemIcons.ic_fluent_search_filled,
                              color: Color(0xFFf9e79f),
                            ),
                            Text(
                              'Search',
                              style: Appstyle.headLine01,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                //event and its expand
                EventExpand(
                  eventName: 'Upcomming Flights',
                  expand: 'View all',
                  func: () {
                    Navigator.pushNamed(context, "allTickets");
                  },
                ),
                const SizedBox(height: 20),
                //ticket
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: ticketList
                          .take(2)
                          .map((singleTicket) => TicketView(
                                ticket: singleTicket,
                              ))
                          .toList(),
                    )),
                const SizedBox(height: 20),
                //event and its expand
                EventExpand(
                  eventName: 'Hotels',
                  expand: 'View all',
                  func: () {
                    Navigator.pushNamed(context, "allHotels");
                  },
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: hotelList
                          .take(2)
                          .map((singleHotel) => Hotel(hotel: singleHotel))
                          .toList()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
