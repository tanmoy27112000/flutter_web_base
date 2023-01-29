import 'package:flutter/material.dart';
import 'package:flutter_web_base/achievement_banner/model/achievement_model.dart';
import 'package:flutter_web_base/footer/footer_2/footer_2_mobile.dart';
import 'package:flutter_web_base/footer/footer_2/footer_2_tab.dart';
import 'package:flutter_web_base/footer/footer_2/footer_2_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Footer2 extends StatelessWidget {
  const Footer2({
    Key? key,
    required this.achievementList,
    this.titleStyle = const TextStyle(),
    this.targetStyle = const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 30,
    ),
  }) : super(key: key);

  final List<AchievementModel> achievementList;
  final TextStyle titleStyle;
  final TextStyle targetStyle;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => ScreenTypeLayout.builder(
        mobile: (p0) => Footer2Mobile(
          title: "2023 Flutter.dev",
          titleStyle: titleStyle,
          logo: const FlutterLogo(),
          action: [
            TextButton(
              child: const Text("Home"),
              onPressed: () {},
            ),
            TextButton(
              child: const Text("Feature"),
              onPressed: () {},
            ),
            TextButton(
              child: const Text("Pricing"),
              onPressed: () {},
            ),
          ],
        ),
        tablet: (p0) => Footer2Tablet(
          title: "2023 Flutter.dev",
          titleStyle: titleStyle,
          logo: const FlutterLogo(),
          action: [
            TextButton(
              child: const Text("Home"),
              onPressed: () {},
            ),
            TextButton(
              child: const Text("Feature"),
              onPressed: () {},
            ),
            TextButton(
              child: const Text("Pricing"),
              onPressed: () {},
            ),
          ],
        ),
        desktop: (p0) => Footer2Web(
          title: "2023 Flutter.dev",
          titleStyle: titleStyle,
          logo: const FlutterLogo(),
          action: [
            TextButton(
              child: const Text("Home"),
              onPressed: () {},
            ),
            TextButton(
              child: const Text("Feature"),
              onPressed: () {},
            ),
            TextButton(
              child: const Text("Pricing"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
