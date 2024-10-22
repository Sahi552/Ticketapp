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
      height: 350,
      width: size.width * 0.6,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Appstyle.ticketColor1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 350 / 2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: AssetImage(hotel['image']), fit: BoxFit.cover)),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              hotel['hotel_name'],
              style: Appstyle.headLine02.copyWith(
                  color: Appstyle.primaryColor, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              hotel['place'],
              style: Appstyle.headLine01.copyWith(color: Appstyle.primaryColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              hotel['rent'],
              style: Appstyle.headLine01.copyWith(color: Appstyle.primaryColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              hotel['special'],
              style: Appstyle.headLine01.copyWith(color: Appstyle.primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
