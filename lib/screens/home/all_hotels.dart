import 'package:flutter/material.dart';
import 'package:ticket/Basement/Res/styles.dart';
import 'package:ticket/Basement/Utils/hotel_json.dart';
import 'package:ticket/screens/home/hotel.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Hotels', style: Appstyle.headLine02),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: hotelList
                .map((singleHotel) => Hotel(
                      hotel: singleHotel,
                      fullscreen: true,
                    ))
                .toList(),
          )),
    );
  }
}
