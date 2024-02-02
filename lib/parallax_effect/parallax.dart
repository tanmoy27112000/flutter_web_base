import 'package:flutter/material.dart';
import 'package:flutter_web_base/parallax_effect/parallax_tab.dart';

import 'package:responsive_builder/responsive_builder.dart';

import 'model/parallax_model.dart';
import 'parallax_mobile.dart';
import 'parallax_web.dart';

class Parallax extends StatelessWidget {
  final ParallaxModel parallaxData;

  const Parallax({Key? key, required this.parallaxData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => ScreenTypeLayout.builder(
        mobile: (context) => ParallaxMobile(
          parallaxData: parallaxData,
        ),
        tablet: (context) => ParallaxTab(parallaxData: parallaxData),
        desktop: (context) => ParallaxWeb(parallaxData: parallaxData),
      ),
    );
  }
}
