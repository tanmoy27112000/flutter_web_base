import 'package:flutter/material.dart';
import 'package:flutter_web_base/achievement_banner/achievement_banner_1/achievement_banner_1_mobile.dart';
import 'package:flutter_web_base/achievement_banner/achievement_banner_1/achievement_banner_1_tablet.dart';
import 'package:flutter_web_base/achievement_banner/achievement_banner_1/achievement_banner_1_web.dart';
import 'package:flutter_web_base/achievement_banner/model/achievement_model.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AchievementBanner1 extends StatelessWidget {
  const AchievementBanner1({
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
        mobile: (p0) => AchievementBanner1Mobile(
          achievementList: achievementList,
          titleStyle: titleStyle,
          targetStyle: targetStyle,
        ),
        tablet: (p0) => AchievementBanner1Tablet(
          achievementList: achievementList,
          titleStyle: titleStyle,
          targetStyle: targetStyle,
        ),
        desktop: (p0) => AchievementBanner1Web(
          achievementList: achievementList,
          titleStyle: titleStyle,
          targetStyle: targetStyle,
        ),
      ),
    );
  }
}
