import 'package:flutter/material.dart';
import 'package:flutter_web_base/feature/feature_2/feature_2_mobile.dart';
import 'package:flutter_web_base/feature/feature_2/feature_2_tab.dart';
import 'package:flutter_web_base/feature/feature_2/feature_2_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Feature2 extends StatefulWidget {
  const Feature2({
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
  State<Feature2> createState() => _Feature2State();
}

class _Feature2State extends State<Feature2> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => ScreenTypeLayout.builder(
        mobile: (context) => Feature2Mobile(
          ctaButtonList: widget.ctaButtonList,
          iconList: widget.iconList,
          subtitleList: widget.subtitleList,
          titleList: widget.titleList,
          featureTitle: widget.featureTitle,
        ),
        desktop: (context) => Feature2Web(
          ctaButtonList: widget.ctaButtonList,
          iconList: widget.iconList,
          subtitleList: widget.subtitleList,
          titleList: widget.titleList,
          featureTitle: widget.featureTitle,
        ),
        tablet: (context) => Feature2Tab(
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
