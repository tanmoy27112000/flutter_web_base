import 'package:flutter/material.dart';
export 'button_2_alt.dart';
export 'button_2_round.dart';
export 'button_2_neg.dart';

class Button2 extends StatelessWidget {
  final double width;
  final double height;
  final Color? color;
  final Icon? icon;
  const Button2({
    super.key,
    this.width = 50,
    this.height = 50.0,
    this.color,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color ?? const Color(0xff3E66FB),
          boxShadow: kElevationToShadow[1]),
      child: const Center(
        child: Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.white,
        ),
      ),
    );
  }
}
