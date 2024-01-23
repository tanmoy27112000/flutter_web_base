import 'package:flutter/material.dart';
import 'package:flutter_web_base/footer/footer_3/footer_3_mobile.dart';
import 'package:flutter_web_base/footer/footer_3/footer_3_tab.dart';
import 'package:flutter_web_base/footer/footer_3/footer_3_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Footer3 extends StatelessWidget {
  const Footer3({
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
        mobile: (p0) => Footer3Mobile(
          title: title,
          titleStyle: titleStyle,
          logo: logo,
          action: action,
        ),
        tablet: (p0) => Footer3Tablet(
          title: title,
          titleStyle: titleStyle,
          logo: logo,
          action: action,
        ),
        desktop: (p0) => Footer3Web(
          title: title,
          titleStyle: titleStyle,
          logo: logo,
          action: action,
        ),
      ),
    );
  }
}
