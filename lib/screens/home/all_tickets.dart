import 'package:flutter/material.dart';
import 'package:ticket/Basement/Res/styles.dart';
import 'package:ticket/Basement/Utils/ticket_json.dart';
import 'package:ticket/Basement/widget/ticket.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appstyle.primaryColor,
      appBar: AppBar(
        title: Text(
          "All Tickets",
          style: Appstyle.headLine02,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
                children: ticketList
                    .map((singleTicket) => GestureDetector(
                          onTap: () {
                            var index = ticketList.indexOf(singleTicket);
                            Navigator.pushNamed(context, "ticket",
                                arguments: {"index": index});
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: TicketView(
                              ticket: singleTicket,
                              fullScreen: true,
                            ),
                          ),
                        ))
                    .toList()),
          )
        ],
      ),
    );
  }
}
