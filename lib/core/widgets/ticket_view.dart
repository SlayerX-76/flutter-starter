 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tutorial_app1/core/widgets/app_column_text_layout.dart';
import 'package:tutorial_app1/core/widgets/app_layoutbuilder_widget.dart';
import 'package:tutorial_app1/core/widgets/big_dot.dart';
import 'package:tutorial_app1/core/widgets/semi_angular_circle.dart';
import 'package:tutorial_app1/core/widgets/text_style_fourth.dart';
import 'package:tutorial_app1/core/widgets/text_style_third.dart';

import '../res/styles/app_styles.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final bool? isColor;
  const TicketView(
      {super.key,
      required this.ticket,
      this.wholeScreen = false,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 193,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
        child: Column(
          children: [
            // Blue part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColor == null
                    ? AppStyles.ticketColor1
                    : AppStyles.ticketColor3,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              child: Column(
                children: [
                  //show departure and destination with icons first line
                  Row(
                    children: [
                      TextStyleThird(
                        text: ticket["from"]["code"],
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      BigDot(
                        isColor: isColor,
                      ),
                      // ticket flying icon
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayoutBuilderWidget(
                              randomDivider: 6,
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColor == null
                                      ? Colors.white
                                      : AppStyles.neoBDColor,
                                )),
                          )
                        ],
                      )),
                      BigDot(
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      TextStyleThird(
                        text: ticket["to"]["code"],
                        isColor: isColor,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  //show departure and destination names with time
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket["from"]["name"],
                          isColor: isColor,
                        ),
                      ),
                      Expanded(child: Container()),
                      TextStyleFourth(
                        text: ticket["flying_time"],
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket["to"]["name"],
                          isColor: isColor,
                          align: TextAlign.end,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            // Middle part of the ticket with semi-circles and dots
            Container(
              color: isColor == null
                  ? AppStyles.ticketColor2
                  : AppStyles.ticketColor3,
              child: Row(
                children: [
                  SemiAngularCircle(
                    isRight: false,
                    isColor: isColor,
                  ),
                  Expanded(
                      child:
                          AppLayoutBuilderWidget(randomDivider: 20, width: 10, isColor: isColor,)),
                  SemiAngularCircle(
                    isRight: true,
                    isColor: isColor,
                  )
                ],
              ),
            ),
            // Red Part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColor==null?AppStyles.ticketColor2:AppStyles.ticketColor3,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(isColor==null?21:0),
                    bottomRight: Radius.circular(isColor==null?21:0)),
              ),
              child: Column(
                children: [
                  //show departure and destination names with time
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                          topText: ticket["date"],
                          bottomText: "Date",
                          alignment: CrossAxisAlignment.start,
                          isColor: isColor,
                      ),
                      AppColumnTextLayout(
                          topText: ticket["departure_time"],
                          bottomText: "Departure time",
                          alignment: CrossAxisAlignment.center,
                          isColor: isColor,
                      ),
                      AppColumnTextLayout(
                          topText: ticket["number"].toString(),
                          bottomText: "Number",
                          alignment: CrossAxisAlignment.end,
                          isColor: isColor,
                      )
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
