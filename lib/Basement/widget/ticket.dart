//designing ticket
import 'package:flutter/material.dart';
import 'package:ticket/Basement/Res/styles.dart';
import 'package:ticket/Basement/widget/app_layout.dart';
import 'package:ticket/Basement/widget/bigdot.dart';
import 'package:ticket/Basement/widget/border_dot.dart';
import 'package:ticket/Basement/widget/ticket_column_text.dart';
import 'package:ticket/Basement/widget/ticket_text.dart';
import 'package:ticket/Basement/widget/ticket_text_info.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool fullScreen;
  const TicketView({super.key, required this.ticket, this.fullScreen = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width * 0.85;
    return SizedBox(
      width: width,
      height: 179,
      child: Container(
        margin: EdgeInsets.only(right: fullScreen == true ? 0:16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Appstyle.ticketColor1,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(12),
                    topLeft: Radius.circular(12),
                  )),
              //ticket blue part
              child: Column(
                children: [
                  //top text
                  Row(
                    children: [
                      TicketText(
                        name: ticket["from"]["code"],
                      ),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                          child: Stack(alignment: Alignment.center, children: [
                        const SizedBox(
                          height: 26,
                          child: AppLayout(
                            randomDivider: 6,
                          ),
                        ),
                        Center(
                          child: Transform.rotate(
                              angle: 1.5,
                              child: const Icon(
                                Icons.local_airport_outlined,
                                color: Colors.white,
                              )),
                        ),
                      ])),
                      const BigDot(),
                      Expanded(child: Container()),
                      TicketText(
                        name: ticket["to"]["code"],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  //bottom text
                  Row(
                    children: [
                      SizedBox(
                          width: 100,
                          child: TicketTextInfo(
                            name: ticket["from"]["name"],
                          )),
                      Expanded(child: Container()),
                      TicketTextInfo(name: ticket["flying time"]),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TicketTextInfo(
                          name: ticket["to"]["name"],
                          align: TextAlign.end,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            //between two colors
            Container(
              color: Appstyle.ticketColor2,
              child: const Row(
                children: [
                  BorderDot(isRight: false),
                  Expanded(
                      child: AppLayout(
                    randomDivider: 16,
                    width: 6,
                  )),
                  BorderDot(isRight: true),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Appstyle.ticketColor2,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  )),
              //ticket orange part
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TicketColumnText(
                        topText: ticket["date"],
                        bottomText: 'date',
                        alignment: CrossAxisAlignment.start,
                      ),
                      TicketColumnText(
                        topText: ticket["depature_Time"],
                        bottomText: 'Depature time',
                      ),
                      TicketColumnText(
                        topText: ticket["number"],
                        bottomText: 'Number',
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
