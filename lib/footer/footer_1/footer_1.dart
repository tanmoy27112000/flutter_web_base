import 'package:flutter/material.dart';
import 'package:flutter_web_base/achievement_banner/model/achievement_model.dart';
import 'package:flutter_web_base/footer/footer_1/footer_1_mobile.dart';
import 'package:flutter_web_base/footer/footer_1/footer_1_tab.dart';
import 'package:flutter_web_base/footer/footer_1/footer_1_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Footer1 extends StatelessWidget {
  const Footer1({
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
        mobile: (p0) => Footer1Mobile(
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
        tablet: (p0) => Footer1Tablet(
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
        desktop: (p0) => Footer1Web(
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
