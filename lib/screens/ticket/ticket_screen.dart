import 'package:flutter/material.dart';
import 'package:ticket/Basement/Res/styles.dart';
import 'package:ticket/Basement/Utils/ticket_json.dart';
import 'package:ticket/Basement/widget/switchTab.dart';
import 'package:ticket/Basement/widget/ticket.dart';
import 'package:ticket/Basement/widget/ticket_column_text.dart';

class TicketScreen extends StatelessWidget {
  final bool? isColor;
  const TicketScreen({super.key, this.isColor});

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tickets',
                  style: Appstyle.headLine02.copyWith(fontSize: 40),
                ),
                const SizedBox(height: 20),
                const SwitchTab(
                  first: Text('Upcoming'),
                  second: Text('Previous'),
                ),
                const SizedBox(height: 20),
                Container(
                    padding: const EdgeInsets.only(left: 16),
                    child: TicketView(
                      ticket: ticketList[0],
                      isColor: true,
                    )),
                const SizedBox(height: 1),
                Container(
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: const EdgeInsets.all(15),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TicketColumnText(
                        topText: "Flutter Dash",
                        bottomText: 'Passenger',
                        alignment: CrossAxisAlignment.start,
                        isColor: true,
                      ),
                      TicketColumnText(
                        topText: "6647 893836726",
                        bottomText: 'Passport',
                        alignment: CrossAxisAlignment.end,
                        isColor: true,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 1),
                Container(
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: const EdgeInsets.all(15),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TicketColumnText(
                        topText: "7673 39873 39873",
                        bottomText: 'Number of E-ticket',
                        alignment: CrossAxisAlignment.start,
                        isColor: true,
                      ),
                      TicketColumnText(
                        topText: "SDJSJNF",
                        bottomText: 'Booking Code',
                        alignment: CrossAxisAlignment.end,
                        isColor: true,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 1),
                Container(
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: const EdgeInsets.all(15),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TicketColumnText(
                        topText: "Visa - 0935",
                        bottomText: 'Payment Method',
                        alignment: CrossAxisAlignment.start,
                        isColor: true,
                      ),
                      TicketColumnText(
                        topText: "\$382",
                        bottomText: 'Price',
                        alignment: CrossAxisAlignment.end,
                        isColor: true,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 1),
                //bar code
                Container(
                  height: 50,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12)),
                    color: Colors.white,
                  ),
                  child: Container(
                    child: ClipRect(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
