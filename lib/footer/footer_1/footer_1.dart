import 'package:flutter/material.dart';
import 'package:flutter_web_base/footer/footer_1/footer_1_mobile.dart';
import 'package:flutter_web_base/footer/footer_1/footer_1_tab.dart';
import 'package:flutter_web_base/footer/footer_1/footer_1_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Footer1 extends StatelessWidget {
  const Footer1({
    Key? key,
    required this.title,
    this.titleStyle = const TextStyle(),
    required this.logo,
    this.action = const [],
  }) : super(key: key);

  final String title;
  final TextStyle titleStyle;
  final Widget logo;
  final List<Widget> action;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => ScreenTypeLayout.builder(
        mobile: (p0) => Footer1Mobile(
          title: title,
          titleStyle: titleStyle,
          logo: logo,
          action: action,
        ),
        tablet: (p0) => Footer1Tablet(
          title: title,
          titleStyle: titleStyle,
          logo: logo,
          action: action,
        ),
        desktop: (p0) => Footer1Web(
          title: title,
          titleStyle: titleStyle,
          logo: logo,
          action: action,
        ),
      ),
    );
  }
}
