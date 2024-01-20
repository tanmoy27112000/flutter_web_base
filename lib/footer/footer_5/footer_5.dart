import 'package:flutter/material.dart';
import 'package:flutter_web_base/footer/footer_5/footer_5_mobile.dart';
import 'package:flutter_web_base/footer/footer_5/footer_5_tab.dart';
import 'package:flutter_web_base/footer/footer_5/footer_5_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Footer5 extends StatelessWidget {
  const Footer5({
    Key? key,
    required this.title,
    this.titleStyle = const TextStyle(),
    required this.logo,
    this.action = const [],
    required this.newsletter,
    required this.socials, required this.text,
  }) : super(key: key);

  final String title;
  final String text;
  final TextStyle titleStyle;
  final Widget logo;
  final List<Widget> action;
  final List<Widget> newsletter;
  final List<Widget> socials;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => ScreenTypeLayout.builder(
        mobile: (p0) => Footer5Mobile(
          title: title,
          titleStyle: titleStyle,
          logo: logo,
          action: action,
        ),
        tablet: (p0) => Footer5Tablet(
          title: title,
          titleStyle: titleStyle,
          logo: logo,
          action: action,
        ),
        desktop: (p0) => Footer5Web(
          title: title,
          titleStyle: titleStyle,
          logo: logo,
          action: action,
          newsletter: newsletter,
          socials: socials, text: text,
        ),
      ),
    );
  }
}
