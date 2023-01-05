import 'package:flutter/material.dart';
import 'package:flutter_web_base/achievement_banner/model/achievement_model.dart';

class AchievementBanner2Mobile extends StatefulWidget {
  const AchievementBanner2Mobile({
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
  State<AchievementBanner2Mobile> createState() =>
      _AchievementBanner2MobileState();
}

class _AchievementBanner2MobileState extends State<AchievementBanner2Mobile> {
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
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.achievementList[i].achievementTarget,
                style: widget.targetStyle,
              ),
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
