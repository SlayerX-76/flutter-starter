import 'package:flutter/material.dart';

class SemiAngularCircle extends StatelessWidget {
  final bool isRight;
  final bool? isColor;
  const SemiAngularCircle({super.key, required this.isRight, this.isColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: isColor==null?Colors.white: Colors.grey.shade200,
            borderRadius: isRight==true?const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20)
            ):const BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20)
            )
        ),
      ),
    );
  }
}
