import 'package:flutter/material.dart';
import 'package:flutter_web_base/parallax_effect/model/parallax_model.dart';
import 'package:flutter_web_base/parallax_effect/parallax.dart';

class ParallaxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ParallaxModel parallaxData = ParallaxModel(
        backgroundImage:
            'https://w.forfun.com/fetch/99/99fb80aa6f0e48e404c9d8dd63b3e3a7.jpeg?w=1470&r=0.5625',
        middleLayerImage:
            'https://web-strapi.mrmilu.com/uploads/flutter_logo_470e9f7491.png',
        topmostLayerText: 'FLUTTER PARALLAX');

    return Scaffold(
        appBar: AppBar(
          title: Text('Parallax Effect'),
        ),
        body: Parallax(parallaxData: parallaxData));
  }
}
