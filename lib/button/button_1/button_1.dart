import 'package:flutter/material.dart';
export 'button_1_alt.dart';
export 'button_1_round.dart';
export 'button_1_neg.dart';

class Button1 extends StatelessWidget {
  final double width;
  final double height;
  final Color? color;
  final TextStyle? textStyle;
  final String text;
  const Button1({
    super.key,
    this.width = 120.0,
    this.height = 40.0,
    this.color,
    this.textStyle,
    required this.text,
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
      child: Center(
        child: Text(
          text,
          style: textStyle ??
              const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
