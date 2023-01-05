import 'package:flutter/material.dart';
import 'package:flutter_web_base/achievement_banner/model/achievement_model.dart';

class AchievementBanner2Tablet extends StatefulWidget {
  const AchievementBanner2Tablet({
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
  State<AchievementBanner2Tablet> createState() =>
      _AchievementBanner2TabletState();
}

class _AchievementBanner2TabletState extends State<AchievementBanner2Tablet> {
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
