import 'package:flutter/material.dart';
import 'package:flutter_web_base/footer/footer_4/footer_4_mobile.dart';
import 'package:flutter_web_base/footer/footer_4/footer_4_tab.dart';
import 'package:flutter_web_base/footer/footer_4/footer_4_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Footer4 extends StatelessWidget {
  const Footer4({
    Key? key,
    required this.title,
    required this.text,
    this.titleStyle = const TextStyle(),
    required this.logo,
    this.action = const [],
  }) : super(key: key);

  final String title;
  final String text;
  final TextStyle titleStyle;
  final Widget logo;
  final List<Widget> action;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => ScreenTypeLayout.builder(
        mobile: (p0) => Footer4Mobile(
          title: title,
          titleStyle: titleStyle,
          logo: logo,
          action: action,
        ),
        tablet: (p0) => Footer4Tablet(
          title: title,
          titleStyle: titleStyle,
          logo: logo,
          action: action,
        ),
        desktop: (p0) => Footer4Web(
          title: title,
          titleStyle: titleStyle,
          logo: logo,
          action: action, text: text,
        ),
      ),
    );
  }
}
