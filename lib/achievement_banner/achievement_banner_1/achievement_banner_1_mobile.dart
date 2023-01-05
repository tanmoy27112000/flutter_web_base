import 'package:flutter/material.dart';
import 'package:flutter_web_base/achievement_banner/model/achievement_model.dart';

class AchievementBanner1Mobile extends StatefulWidget {
  const AchievementBanner1Mobile({
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
  State<AchievementBanner1Mobile> createState() =>
      _AchievementBanner1MobileState();
}

class _AchievementBanner1MobileState extends State<AchievementBanner1Mobile> {
  List<Widget> widgetList = [];
  @override
  void initState() {
    generateWdgetList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: widgetList,
    );
  }

  void generateWdgetList() {
    for (var i = 0; i < widget.achievementList.length; i++) {
      widgetList.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.achievementList[i].achievementTarget,
              style: widget.targetStyle,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(widget.achievementList[i].achievementTitle,
                style: widget.titleStyle),
          ],
        ),
      );
      i == widget.achievementList.length - 1
          ? const SizedBox()
          : widgetList.add(Padding(
              padding: const EdgeInsets.all(40.0),
              child: Container(
                height: 2,
                width: 20,
                color: Colors.black,
              ),
            ));
    }
  }
}
