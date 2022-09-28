import 'package:flutter/material.dart';
import 'package:flutter_web_base/feature/feature_1/feature_1_mobile.dart';
import 'package:flutter_web_base/feature/feature_1/feature_1_tab.dart';
import 'package:flutter_web_base/feature/feature_1/feature_1_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Feature1 extends StatefulWidget {
  const Feature1({
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
  State<Feature1> createState() => _Feature1State();
}

class _Feature1State extends State<Feature1> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => ScreenTypeLayout.builder(
        mobile: (context) => Feature1Mobile(
          ctaButtonList: widget.ctaButtonList,
          iconList: widget.iconList,
          subtitleList: widget.subtitleList,
          titleList: widget.titleList,
          featureTitle: widget.featureTitle,
        ),
        desktop: (context) => Feature1Web(
          ctaButtonList: widget.ctaButtonList,
          iconList: widget.iconList,
          subtitleList: widget.subtitleList,
          titleList: widget.titleList,
          featureTitle: widget.featureTitle,
        ),
        tablet: (context) => Feature1Tab(
          ctaButtonList: widget.ctaButtonList,
          iconList: widget.iconList,
          subtitleList: widget.subtitleList,
          titleList: widget.titleList,
          featureTitle: widget.featureTitle,
        ),
      ),
    );
  }
}
