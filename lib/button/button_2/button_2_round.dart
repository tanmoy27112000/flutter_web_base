import 'package:flutter/material.dart';

class Button2Round extends StatelessWidget {
  final double width;
  final double height;
  final Color? color;
  final Icon? icon;
  const Button2Round({
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
          borderRadius: BorderRadius.circular(100),
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
