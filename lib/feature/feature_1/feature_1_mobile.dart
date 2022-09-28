import 'package:flutter/material.dart';
import 'package:flutter_web_base/feature/feature_1/feature_item.dart';
import 'package:flutter_web_base/utils/enum.dart';

class Feature1Mobile extends StatefulWidget {
  const Feature1Mobile({
    super.key,
    required this.iconList,
    required this.titleList,
    required this.subtitleList,
    required this.ctaButtonList,
    required this.featureTitle,
  });

  final List<IconData> iconList;
  final List<String> titleList;
  final List<String> subtitleList;
  final List<Widget> ctaButtonList;
  final Widget featureTitle;

  @override
  State<Feature1Mobile> createState() => _Feature1MobileState();
}

class _Feature1MobileState extends State<Feature1Mobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: kElevationToShadow[3],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
              vertical: 8,
            ),
            child: widget.featureTitle,
          ),
          Divider(
            indent: MediaQuery.of(context).size.width * 0.05,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.02,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                widget.titleList.length,
                (index) => FeatureItem1(
                  icon: widget.iconList[index],
                  title: widget.titleList[index],
                  subtitle: widget.subtitleList[index],
                  ctaButton: widget.ctaButtonList[index],
                  screenType: ScreenType.tablet,
                ),
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
