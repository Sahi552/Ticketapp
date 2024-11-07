import 'package:flutter/material.dart';
import 'package:ticket/Basement/Res/styles.dart';

class Hotel extends StatelessWidget {
  final Map<String, dynamic> hotel;
  final bool fullscreen;
  const Hotel({super.key, required this.hotel, this.fullscreen = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          right: fullscreen == true ? 0 : 16,
          bottom: fullscreen == true ? 16 : 0),
      height: 250,
      width: size.width * 0.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Appstyle.ticketColor1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Appstyle.ticketColor1, width: 5),
                image: DecorationImage(
                    image: AssetImage(hotel['image']), fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              hotel['hotel_name'],
              style: Appstyle.headLine04.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              hotel['place'],
              style: Appstyle.headLine01.copyWith(color: Appstyle.hotelText),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              hotel['rent'],
              style: Appstyle.headLine01.copyWith(color: Appstyle.hotelText),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              hotel['special'],
              style: Appstyle.headLine01.copyWith(color: Appstyle.hotelText),
            ),
          ),
        ],
      ),
    );
  }
}
