import 'package:flutter/material.dart';
import 'package:tutorial_app1/core/res/media.dart';
import 'package:tutorial_app1/core/res/styles/app_styles.dart';

class Hotel extends StatelessWidget {
  final Map<String, dynamic> hotel;
  final bool wholeScreen;
  const Hotel({super.key, required this.hotel, this.wholeScreen = false });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
      return Container(
        padding: const EdgeInsets.all(8.0),
        width: size.width*0.4,
        height: 450,
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: AppStyles.primaryColor,
                borderRadius: BorderRadius.circular(24),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/images/${hotel['image']}"
                  )
                )
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                hotel['place'],
                style: AppStyles.frantic.copyWith(color: Colors.yellow),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
               hotel['destination'],
                style: AppStyles.headlineStyle2.copyWith(color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "\$${hotel['price']}/night",
                style: AppStyles.frantic.copyWith(color: Colors.yellow),
              ),
            )
          ],
        ),
      );
  }
}
