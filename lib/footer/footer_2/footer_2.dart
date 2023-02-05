import 'package:flutter/material.dart';
import 'package:flutter_web_base/footer/footer_2/footer_2_mobile.dart';
import 'package:flutter_web_base/footer/footer_2/footer_2_tab.dart';
import 'package:flutter_web_base/footer/footer_2/footer_2_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Footer2 extends StatelessWidget {
  const Footer2({
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
        mobile: (p0) => Footer2Mobile(
          title: title,
          titleStyle: titleStyle,
          logo: logo,
          action: action,
        ),
        tablet: (p0) => Footer2Tablet(
          title: title,
          titleStyle: titleStyle,
          logo: logo,
          action: action,
        ),
        desktop: (p0) => Footer2Web(
          title: title,
          titleStyle: titleStyle,
          logo: logo,
          action: action,
        ),
      ),
    );
  }
}
