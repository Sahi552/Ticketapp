import 'package:flutter/material.dart';
import 'package:ticket/Basement/Res/styles.dart';
import 'package:ticket/Basement/Utils/hotel_json.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Hotels', style: Appstyle.headLine02),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, "hotelView");
        },
        child: Container(
          margin: const EdgeInsets.only(left: 16),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                childAspectRatio: 1,
                mainAxisSpacing: 15,
              ),
              itemCount: hotelList.length,
              itemBuilder: (BuildContext context, int index) {
                var singleHotel = hotelList[index];
                return HotelGrid(hotel: singleHotel);
              },
            ),
          ),
        ),
      ),
    );
  }
}

class HotelGrid extends StatelessWidget {
  final Map<String, dynamic> hotel;
  final bool fullscreen;
  const HotelGrid({super.key, required this.hotel, this.fullscreen = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          right: fullscreen == true ? 0 : 16,
          bottom: fullscreen == true ? 16 : 0),
      // height: 350,
      // width: size.width * 0.6,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Appstyle.ticketColor1),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.2,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Appstyle.ticketColor1,
                    width: 5,
                  ),
                  image: DecorationImage(
                      image: AssetImage(hotel['image']), fit: BoxFit.cover)),
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            hotel['hotel_name'],
            style: Appstyle.headLine01.copyWith(
                color: Appstyle.primaryColor, fontWeight: FontWeight.w500),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                hotel['place'],
                style:
                    Appstyle.headLine03.copyWith(color: Appstyle.primaryColor),
              ),
              Text(
                hotel['rent'],
                style:
                    Appstyle.headLine03.copyWith(color: Appstyle.primaryColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
