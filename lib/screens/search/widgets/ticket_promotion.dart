import 'package:flutter/material.dart';

import '../../../core/res/media.dart';
import '../../../core/res/styles/app_styles.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          width: size.width * .52,
          height: 600,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 5,
                    spreadRadius: 10)
              ]),
          child: Column(
            children: [
              Container(
                height: 360,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          AppMedia.planeSit,
                        ))),
              ),
              const SizedBox(
                height: 13,
              ),
              Text(
                "20% discount on the early booking of this flight. Don't miss!",
                style: AppStyles.frantic,
              )
            ],
          ),
        ),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  width: size.width * .40,
                  height: 280,
                  decoration: BoxDecoration(
                      color: const Color(0xFF3AB888),
                      borderRadius: BorderRadius.circular(18)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Discount\nfor survey",
                          style: AppStyles.headlineStyle1.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                          "Take a survey about our services and get a discount",
                          style: AppStyles.headlineStyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 26)),
                    ],
                  ),
                ),
                Positioned(
                  right: -45,
                  top: -35,
                  child: Container(
                      padding: const EdgeInsets.all(30),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 18, color: AppStyles.circleColor))),
                )
              ],
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              width: size.width * .40,
              height: 310,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: const Color(0xFFEC6545)),
              child: Column(
                children: [
                  Text(
                    "Take Love",
                    style: AppStyles.headlineStyle2.copyWith(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
