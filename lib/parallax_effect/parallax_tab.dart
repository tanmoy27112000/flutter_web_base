import 'package:flutter/material.dart';

import 'model/parallax_model.dart';

class ParallaxTab extends StatelessWidget {
  final ParallaxModel parallaxData;

  const ParallaxTab({Key? key, required this.parallaxData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Positioned.fill(
          left: screenWidth * 0.3,
          top: screenHeight * 0.15,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0.0, end: 1.0),
            duration: Duration(seconds: 5),
            builder: (context, double value, child) {
              return Transform.translate(
                offset: Offset(0.0, -value * 50),
                child: Image.network(
                  parallaxData.backgroundImage,
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
        Positioned(
          top: screenHeight * 0.2,
          left: screenWidth * 0.15,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0.0, end: 1.0),
            duration: Duration(seconds: 7),
            builder: (context, double value, child) {
              return Transform.translate(
                offset: Offset(0.0, -value * 35),
                child: Image.network(
                  parallaxData.middleLayerImage,
                  width: screenWidth * 0.3,
                  height: screenHeight * 0.25,
                ),
              );
            },
          ),
        ),
        Positioned(
          top: screenHeight * 0.05,
          left: screenWidth * 0.25,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0.0, end: 1.0),
            duration: Duration(seconds: 5),
            builder: (context, double value, child) {
              return Transform.translate(
                offset: Offset(0.0, -value * 20),
                child: Text(
                  parallaxData.topmostLayerText,
                  style: TextStyle(
                    fontSize: screenHeight * 0.06,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
