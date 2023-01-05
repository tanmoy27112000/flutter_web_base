import 'package:flutter/material.dart';

import 'package:flutter_web_base/flutter_web_base.dart';

class AchievementBannerPage extends StatefulWidget {
  const AchievementBannerPage({super.key});

  @override
  State<AchievementBannerPage> createState() => _AchievementBannerPageState();
}

class _AchievementBannerPageState extends State<AchievementBannerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: AchievementBanner1(
              targetStyle: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
              achievementList: [
                AchievementModel(
                  achievementTitle: "USER ACTIVE",
                  achievementTarget: '3800+',
                ),
                AchievementModel(
                  achievementTitle: "TRUSTED CLIENTS",
                  achievementTarget: '230+',
                ),
                AchievementModel(
                  achievementTitle: "PROJECTS DONE",
                  achievementTarget: '1200+',
                ),
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: AchievementBanner2(
              targetStyle: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
              achievementList: [
                AchievementModel(
                  achievementTitle: "USER ACTIVE",
                  achievementTarget: '3800+',
                ),
                AchievementModel(
                  achievementTitle: "TRUSTED CLIENTS",
                  achievementTarget: '230+',
                ),
                AchievementModel(
                  achievementTitle: "PROJECTS DONE",
                  achievementTarget: '1200+',
                ),
              ],
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
