import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket/Basement/Res/styles.dart';
import 'package:ticket/Basement/Utils/ticket_json.dart';
import 'package:ticket/Basement/widget/switchTab.dart';
import 'package:ticket/Basement/widget/ticket.dart';
import 'package:ticket/Basement/widget/ticket_column_text.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  late int ticketIndex = 0;

  @override
  void didChangeDependencies() {
    if (ModalRoute.of(context)!.settings.arguments != null) {
      var args = ModalRoute.of(context)!.settings.arguments as Map;
      ticketIndex = args["index"];
      super.didChangeDependencies();
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tickets',
          style: Appstyle.headLine02.copyWith(fontSize: 40),
        ),
      ),
      backgroundColor: Appstyle.primaryColor,
      body: Stack(
        children: [
          ListView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SwitchTab(
                    first: Text('Upcoming'),
                    second: Text('Previous'),
                  ),
                  const SizedBox(height: 20),
                  Container(
                      padding: const EdgeInsets.only(left: 16),
                      child: TicketView(
                        ticket: ticketList[ticketIndex],
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
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12)),
                      color: Colors.white,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: BarcodeWidget(
                          height: 80,
                          width: double.infinity,
                          data: "summa",
                          barcode: Barcode.code128(),
                          drawText: false,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 16),
                      child: TicketView(
                        ticket: ticketList[ticketIndex],
                      )),
                ],
              ),
            ],
          ),
          buildPositioned(height, false),
          buildPositioned(height, true),
        ],
      ),
    );
  }
}

Positioned buildPositioned(double height, bool? position) {
  return Positioned(
      top: height * 0.46,
      left: position == false ? 16 : null,
      right: position == true ? 16 : null,
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2, color: Colors.black)),
        child: const CircleAvatar(
          maxRadius: 4,
          backgroundColor: Colors.black,
        ),
      ));
}
