import 'package:flutter/material.dart';

import '../../../core/res/styles/app_styles.dart';

class FindTickets extends StatelessWidget {
  const FindTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppStyles.findTicketsColor),
      child: Center(
        child: Text("Find Tickets",
            style: AppStyles.textStyle.copyWith(color: Colors.white)),
      ),
    );
  }
}
