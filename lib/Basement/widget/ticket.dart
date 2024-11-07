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
  final bool? isColor;
  const TicketView(
      {super.key, required this.ticket, this.fullScreen = false, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width * 0.90;
    return SizedBox(
      width: width,
      height: 154,
      child: Container(
        margin: EdgeInsets.only(right: fullScreen == true ? 0 : 16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: isColor == null ? Appstyle.ticketColor1 : Colors.white,
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
                        isColor: isColor == null ? null : true,
                      ),
                      Expanded(child: Container()),
                      BigDot(
                        isColor: isColor == true ? true : null,
                      ),
                      Expanded(
                          child: Stack(alignment: Alignment.center, children: [
                        const SizedBox(
                          height: 20,
                          child: AppLayout(
                            randomDivider: 6,
                          ),
                        ),
                        Center(
                          child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_outlined,
                                color: isColor == true
                                    ? Colors.lightBlueAccent
                                    : Colors.white,
                              )),
                        ),
                      ])),
                      BigDot(
                        isColor: isColor == true ? true : null,
                      ),
                      Expanded(child: Container()),
                      TicketText(
                        name: ticket["to"]["code"],
                        isColor: isColor == null ? null : true,
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
                            isColor: isColor == null ? null : true,
                          )),
                      Expanded(child: Container()),
                      TicketTextInfo(
                        name: ticket["flying time"],
                        isColor: isColor == null ? null : true,
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TicketTextInfo(
                          name: ticket["to"]["name"],
                          isColor: isColor == null ? null : true,
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
              color: isColor == null ? Appstyle.ticketColor2 : Colors.white,
              child: Row(
                children: [
                  const BorderDot(
                    isRight: false,
                  ),
                  Expanded(
                      child: AppLayout(
                    randomDivider: 16,
                    width: 6,
                    isColor: isColor == null ? null : true,
                  )),
                  const BorderDot(
                    isRight: true,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: isColor == null ? Appstyle.ticketColor2 : Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: isColor == null
                        ? const Radius.circular(12)
                        : Radius.zero,
                    bottomLeft: isColor == null
                        ? const Radius.circular(12)
                        : Radius.zero,
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
                        isColor: isColor == null ? null : true,
                      ),
                      TicketColumnText(
                        topText: ticket["depature_Time"],
                        bottomText: 'Departure time',
                        isColor: isColor == null ? null : true,
                      ),
                      TicketColumnText(
                        topText: ticket["number"],
                        bottomText: 'Number',
                        alignment: CrossAxisAlignment.end,
                        isColor: isColor == null ? null : true,
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
