import 'package:flutter/material.dart';
import 'package:flutter_web_base/achievement_banner/achievement_banner_2/achievement_banner_2_mobile.dart';
import 'package:flutter_web_base/achievement_banner/achievement_banner_2/achievement_banner_2_tablet.dart';
import 'package:flutter_web_base/achievement_banner/achievement_banner_2/achievement_banner_2_web.dart';
import 'package:flutter_web_base/achievement_banner/model/achievement_model.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AchievementBanner2 extends StatelessWidget {
  const AchievementBanner2({
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
        mobile: (p0) => AchievementBanner2Mobile(
          achievementList: achievementList,
          titleStyle: titleStyle,
          targetStyle: targetStyle,
        ),
        tablet: (p0) => AchievementBanner2Tablet(
          achievementList: achievementList,
          titleStyle: titleStyle,
          targetStyle: targetStyle,
        ),
        desktop: (p0) => AchievementBanner2Web(
          achievementList: achievementList,
          titleStyle: titleStyle,
          targetStyle: targetStyle,
        ),
      ),
    );
  }
}
