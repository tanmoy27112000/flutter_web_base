import 'package:flutter/material.dart';
import 'package:flutter_web_base/feature/feature_1/feature_item.dart';
import 'package:flutter_web_base/utils/enum.dart';

class Feature1Web extends StatefulWidget {
  const Feature1Web({
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
  State<Feature1Web> createState() => _Feature1WebState();
}

class _Feature1WebState extends State<Feature1Web> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.8,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              widget.titleList.length,
              (index) => FeatureItem1(
                icon: widget.iconList[index],
                title: widget.titleList[index],
                subtitle: widget.subtitleList[index],
                ctaButton: widget.ctaButtonList[index],
                screenType: ScreenType.web,
              ),
            ).toList(),
          ),
        ],
      ),
    );
  }
}
