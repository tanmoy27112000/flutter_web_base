import 'package:flutter/material.dart';

class Button1Round extends StatelessWidget {
  final double width;
  final double height;
  final Color? color;
  final TextStyle? textStyle;
  final String text;
  const Button1Round({
    super.key,
    this.width = 140.0,
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
          borderRadius: BorderRadius.circular(100),
          color: color ?? const Color(0xff3E66FB),
          boxShadow: kElevationToShadow[1]),
      child: Center(
        child: Row(
          children: [
            Expanded(
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
            ),
            const Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
                size: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
