import 'package:flutter/material.dart';
import 'package:tutorial_app1/screens/home/widgets/hotel.dart';
import 'package:tutorial_app1/core/utils/all_json.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("All Hotels"),
        ),
        body: ListView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: hotelList
                    .map((singleHotel) =>
                    Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: Hotel(hotel: singleHotel, wholeScreen: true)))
                    .toList(),
              ),
            )
          ],
        ));
  }
}

