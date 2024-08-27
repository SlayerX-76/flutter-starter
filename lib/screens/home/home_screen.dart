import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_app1/core/res/media.dart';
import 'package:tutorial_app1/core/widgets/app_double_text.dart';
import 'package:tutorial_app1/core/widgets/ticket_view.dart';
import 'package:tutorial_app1/screens/home/widgets/hotel.dart';


import '../../core/res/styles/app_styles.dart';
import '../../core/utils/all_json.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyles.bgColor,
        body: ListView(
          children: [
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Good Morning", style: AppStyles.headlineStyle3),
                          const SizedBox(
                            height: 5,
                          ),
                          Text("Book Tickets", style: AppStyles.headlineStyle1)
                        ],
                      ),
                      Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: AssetImage(AppMedia.logo))))
                    ],
                  ),
                  const SizedBox(height: 25),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD),
                    ),
                    child: const Row(
                      children: [
                        Icon(FluentSystemIcons.ic_fluent_search_regular,
                            color: Color(0xFFBFC205)),
                        Text("Search")
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  AppDoubleText(
                      bigText: 'Upcoming Flights',
                      smallText: 'View All',
                      func: ()=>Navigator.pushNamed(context, "/all_tickets")
                  ),
                  const SizedBox(height: 20),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: ticketList
                            .map((singleTicket) =>
                                TicketView(ticket: singleTicket))
                            .toList(),
                      )),
                  const SizedBox(height: 40),
                  AppDoubleText(
                      bigText: 'Hotels',
                      smallText: 'View All',
                      func: ()=>Navigator.pushNamed(context, "/all_hotels"),
                  ),
                  const SizedBox(height: 20), 
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                      child: Row(
                        children: hotelList
                            .map((singleHotel) =>
                            Hotel(hotel: singleHotel))
                            .toList(),
                      ))
                ],
              ),
            ),
          ],
        ));
  }
}
