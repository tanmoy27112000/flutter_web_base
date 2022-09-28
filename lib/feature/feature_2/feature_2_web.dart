import 'package:flutter/material.dart';
import 'package:flutter_web_base/feature/feature_2/feature_item_2.dart';
import 'package:flutter_web_base/utils/enum.dart';

class Feature2Web extends StatefulWidget {
  const Feature2Web({
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
  State<Feature2Web> createState() => _Feature2WebState();
}

class _Feature2WebState extends State<Feature2Web> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: kElevationToShadow[3],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
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
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              widget.titleList.length,
              (index) => FeatureItem2(
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
