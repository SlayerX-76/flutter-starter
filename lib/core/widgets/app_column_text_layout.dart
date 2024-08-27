

import 'package:flutter/material.dart';
import 'package:tutorial_app1/core/widgets/text_style_fourth.dart';
import 'package:tutorial_app1/core/widgets/text_style_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  final bool? isColor;
  const AppColumnTextLayout({super.key, required this.topText, required this.bottomText, required this.alignment, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
        TextStyleThird(text: topText, isColor: isColor),
        const SizedBox(
          height: 3,
        ),
        TextStyleFourth(text: bottomText, isColor: isColor,),
      ],
    );
  }
}
