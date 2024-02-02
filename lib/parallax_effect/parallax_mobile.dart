import 'package:flutter/material.dart';

import 'model/parallax_model.dart';

class ParallaxMobile extends StatelessWidget {
  final ParallaxModel parallaxData;

  const ParallaxMobile({Key? key, required this.parallaxData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Image (full width)
        Positioned.fill(
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0.0, end: 1.0),
            duration: Duration(seconds: 5),
            builder: (context, double value, child) {
              return Transform.translate(
                offset: Offset(0.0, -value * 100),
                child: Image.network(
                  parallaxData.backgroundImage,
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),

        // Middle Layer Image
        Positioned(
          top: MediaQuery.of(context).size.height * 0.25,
          left: (MediaQuery.of(context).size.width - 250) / 2,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0.0, end: 1.0),
            duration: Duration(seconds: 7),
            builder: (context, double value, child) {
              return Transform.translate(
                offset: Offset(0.0, -value * 50),
                child: Image.network(
                  parallaxData.middleLayerImage,
                  width: 250,
                  height: 250,
                ),
              );
            },
          ),
        ),

        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.1,
          left: (MediaQuery.of(context).size.width - 250) / 2,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0.0, end: 1.0),
            duration: Duration(seconds: 5),
            builder: (context, double value, child) {
              return Transform.translate(
                offset: Offset(0.0, -value * 25),
                child: Text(
                  parallaxData.topmostLayerText,
                  style: TextStyle(
                    fontSize: 20,
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
