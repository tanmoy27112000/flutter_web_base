import 'package:flutter/material.dart';
import 'package:flutter_web_base/achievement_banner/model/achievement_model.dart';

class AchievementBanner1Tablet extends StatefulWidget {
  const AchievementBanner1Tablet({
    super.key,
    required this.achievementList,
    this.titleStyle = const TextStyle(),
    this.targetStyle = const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 30,
    ),
  });
  final List<AchievementModel> achievementList;
  final TextStyle titleStyle;
  final TextStyle targetStyle;

  @override
  State<AchievementBanner1Tablet> createState() =>
      _AchievementBanner1TabletState();
}

class _AchievementBanner1TabletState extends State<AchievementBanner1Tablet> {
  List<Widget> widgetList = [];
  @override
  void initState() {
    generateWdgetList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: widgetList,
    );
  }

  void generateWdgetList() {
    for (var i = 0; i < widget.achievementList.length; i++) {
      widgetList.add(Row(
        children: [
          Text(
            widget.achievementList[i].achievementTarget,
            style: widget.targetStyle,
          ),
          const SizedBox(width: 10),
          Text(
            widget.achievementList[i].achievementTitle,
            style: widget.titleStyle,
          ),
        ],
      ));
      i == widget.achievementList.length - 1
          ? const SizedBox()
          : widgetList.add(Container(
              height: 20,
              width: 2,
              color: Colors.black,
            ));
    }
  }
}
