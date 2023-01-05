import 'package:flutter/material.dart';
import 'package:flutter_web_base/achievement_banner/model/achievement_model.dart';

class AchievementBanner2Web extends StatefulWidget {
  const AchievementBanner2Web({
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
  State<AchievementBanner2Web> createState() => _AchievementBanner2WebState();
}

class _AchievementBanner2WebState extends State<AchievementBanner2Web> {
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
      widgetList.add(Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.achievementList[i].achievementTarget,
              style: widget.targetStyle,
            ),
          ),
          const SizedBox(width: 30),
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
