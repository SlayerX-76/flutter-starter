import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_app1/core/widgets/app_layoutbuilder_widget.dart';
import 'package:tutorial_app1/core/widgets/ticket_view.dart';
import 'package:tutorial_app1/screens/search/widgets/app_ticket_tabs.dart';

import '../../core/res/media.dart';
import '../../core/res/styles/app_styles.dart';
import '../../core/utils/all_json.dart';
import '../../core/widgets/app_column_text_layout.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              const SizedBox(height: 40,),
              Text(
                "Tickets", style: AppStyles.frantic,
              ),
              const SizedBox(height: 20,),
              const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous",),
              const SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.only(left: 16),
                  child: TicketView(ticket: ticketList[0],isColor: true ,)
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                 color: AppStyles.ticketColor3,
                 child: Column(
                   children: [
                     const Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         AppColumnTextLayout(
                           topText: "Magnum X",
                           bottomText: "Passenger",
                           alignment: CrossAxisAlignment.start,
                           isColor: true,
                         ),
                         AppColumnTextLayout(
                           topText: "5221 364869",
                           bottomText: "Passport",
                           alignment: CrossAxisAlignment.end,
                           isColor: true,
                         ),
                       ],
                     ),
                     const SizedBox(height: 20),
                     const AppLayoutBuilderWidget(randomDivider: 15, width: 5, isColor: false,),
                     const SizedBox(height: 20,),
                     const Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         AppColumnTextLayout(
                           topText: "3678458 55678599",
                           bottomText: "Number of E-Ticket",
                           alignment: CrossAxisAlignment.start,
                           isColor: true,
                         ),
                         AppColumnTextLayout(
                           topText: "F5E66R",
                           bottomText: "Booking Code",
                           alignment: CrossAxisAlignment.end,
                           isColor: true,
                         ),
                       ],
                     ),
                     const SizedBox(height: 20),
                     const AppLayoutBuilderWidget(randomDivider: 15, width: 5, isColor: false,),
                     const SizedBox(height: 20,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Column(
                           children: [
                             Row(
                               children: [
                                 Image.asset(AppMedia.visaCard, scale: 7,),
                                 Text(" *** 2462", style: AppStyles.headlineStyle3,)
                               ],
                             ),
                             const SizedBox(height: 5,),
                             Text("Payment method", style: AppStyles.ticketsNeoColor)
                           ],
                         ),
                         const AppColumnTextLayout(
                           topText: "\$249.99",
                           bottomText: "Price",
                           alignment: CrossAxisAlignment.end,
                           isColor: true,
                         ),
                       ],
                     ),
                   ],
                 ),
              ),
              const SizedBox(height:1,),
              // Bottom of the ticket
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: AppStyles.ticketColor3 ,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(21),
                    bottomLeft: Radius.circular(21)
                  )
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      height: 80,
                      barcode: Barcode.code128(), data: 'https://www.google.com',
                      drawText: false,
                      color: AppStyles.textColor,
                      width: double.infinity,
                    )
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Ticket with original color at the bottom of the white ticket
              Container(
                  height: 200,
                  padding: const EdgeInsets.only(left: 16),
                  child: TicketView(ticket: ticketList[0])
              ),
            ],
          ),
          Positioned(
            left: 22,
              top: 295,
              child: Container(
                padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle, border: Border.all(width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: AppStyles.textColor,
              ),
          )),
          Positioned(
              right: 22,
              top: 295,
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, border: Border.all(width: 2)
                ),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: AppStyles.textColor,
                ),
              ))
        ],
      )
    );
  }
}
