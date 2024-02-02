import 'package:flutter/material.dart';
import 'package:flutter_web_base/parallax_effect/model/parallax_model.dart';

class ParallaxWeb extends StatelessWidget {
  final ParallaxModel parallaxData;

  const ParallaxWeb({Key? key, required this.parallaxData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use MediaQuery to adapt for responsiveness (not strictly applicable on web, but helps with flexibility)
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
    
        Positioned.fill(
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0.0, end: 1.0),
            duration: Duration(seconds: 5),
            builder: (context, double value, child) {
              return Transform.translate(
                offset:
                    Offset(0.0, -value * 75), 
                child: Image.network(
                  parallaxData.backgroundImage,
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),

     
        Positioned(
          top: screenHeight * 0.25, 
          left: screenWidth * 0.3, 
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0.0, end: 1.0),
            duration: Duration(seconds: 7),
            builder: (context, double value, child) {
              return Transform.translate(
                offset:
                    Offset(0.0, -value * 50), 
                child: Image.network(
                  parallaxData.middleLayerImage,
                  width: screenWidth * 0.4, 
                  height: screenHeight * 0.3, 
                ),
              );
            },
          ),
        ),

     
        Positioned(
          bottom: screenHeight * 0.1, 
          left: screenWidth * 0.25, 
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0.0, end: 1.0),
            duration: Duration(seconds: 5),
            builder: (context, double value, child) {
              return Transform.translate(
                offset:
                    Offset(0.0, -value * 25), 
                child: Text(
                  parallaxData.topmostLayerText,
                  style: TextStyle(
                    fontSize: screenWidth * 0.05, 
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
