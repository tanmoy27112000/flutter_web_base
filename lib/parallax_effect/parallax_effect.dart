import 'package:flutter/material.dart';

class ParallaxWidget extends StatelessWidget {
  final String backgroundImage;
  final String middleLayerImage;
  final String topmostLayerText;

  const ParallaxWidget({
    Key? key,
    required this.backgroundImage,
    required this.middleLayerImage,
    required this.topmostLayerText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Image
        Positioned.fill(
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0.0, end: 1.0),
            duration: Duration(seconds: 5),
            builder: (context, double value, child) {
              return Transform.translate(
                offset: Offset(0.0, -value * 100),
                child: Image.network(
                  backgroundImage,
                  fit: BoxFit.fill,
                ),
              );
            },
          ),
        ),

        // Middle Layer Image
        Positioned(
          top: 100,
          left: 100,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0.0, end: 1.0),
            duration: Duration(seconds: 7),
            builder: (context, double value, child) {
              return Transform.translate(
                offset: Offset(0.0, -value * 50),
                child: Image.network(
                  middleLayerImage,
                  width: 400,
                  height: 400,
                ),
              );
            },
          ),
        ),

        // Text
        Positioned(
          bottom: 100,
          left: 100,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0.0, end: 1.0),
            duration: Duration(seconds: 5),
            builder: (context, double value, child) {
              return Transform.translate(
                offset: Offset(0.0, -value * 25),
                child: Text(
                  topmostLayerText,
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
