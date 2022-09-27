import 'package:flutter/material.dart';
import 'package:flutter_web_base/heroes/heroe_1/heroe_1_mobile.dart';
import 'package:flutter_web_base/heroes/heroe_1/heroe_1_tab.dart';
import 'package:flutter_web_base/heroes/heroe_1/heroe_1_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Heroes1 extends StatefulWidget {
  const Heroes1({
    super.key,
    required this.logo,
    required this.title,
    required this.subtitle,
    this.subtitleStyle,
    this.titleStyle,
    required this.buttons,
  });

  ///Tile refers to the text after the logo in the heroes
  final String? title;

  ///log refers to the image in the heroes
  final Widget? logo;

  final TextStyle? titleStyle;

  final TextStyle? subtitleStyle;

  final String subtitle;

  final List<Widget> buttons;

  @override
  State<Heroes1> createState() => _Heroes1State();
}

class _Heroes1State extends State<Heroes1> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => ScreenTypeLayout.builder(
        mobile: (context) => Heroe1Mobile(
          buttons: widget.buttons,
          logo: widget.logo,
          titleStyle: widget.titleStyle,
          subtitle: widget.subtitle,
          title: widget.title,
          key: widget.key,
          subtitleStyle: widget.subtitleStyle,
        ),
        desktop: (context) => Heroe1Web(
          buttons: widget.buttons,
          logo: widget.logo,
          titleStyle: widget.titleStyle,
          subtitle: widget.subtitle,
          title: widget.title,
          key: widget.key,
          subtitleStyle: widget.subtitleStyle,
        ),
        tablet: (context) => Heroe1Tab(
          buttons: widget.buttons,
          logo: widget.logo,
          titleStyle: widget.titleStyle,
          subtitle: widget.subtitle,
          title: widget.title,
          key: widget.key,
          subtitleStyle: widget.subtitleStyle,
        ),
      ),
    );
  }
}
