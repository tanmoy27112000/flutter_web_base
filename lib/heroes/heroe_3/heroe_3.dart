import 'package:flutter/material.dart';
import 'package:flutter_web_base/heroes/heroe_3/heroe_3_mobile.dart';
import 'package:flutter_web_base/heroes/heroe_3/heroe_3_tab.dart';
import 'package:flutter_web_base/heroes/heroe_3/heroe_3_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Heroes3 extends StatefulWidget {
  const Heroes3({
    super.key,
    required this.title,
    required this.subtitle,
    this.subtitleStyle,
    this.titleStyle,
    required this.buttons,
    required this.image,
  });

  ///Tile refers to the text after the logo in the heroes
  final String? title;

  final TextStyle? titleStyle;

  final TextStyle? subtitleStyle;

  final String subtitle;

  final List<Widget> buttons;

  final Image image;

  @override
  State<Heroes3> createState() => _Heroes3State();
}

class _Heroes3State extends State<Heroes3> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => ScreenTypeLayout.builder(
        mobile: (context) => Heroe3Mobile(
          buttons: widget.buttons,
          titleStyle: widget.titleStyle,
          subtitle: widget.subtitle,
          title: widget.title,
          key: widget.key,
          image: widget.image,
          subtitleStyle: widget.subtitleStyle,
        ),
        desktop: (context) => Heroe3Web(
          buttons: widget.buttons,
          titleStyle: widget.titleStyle,
          subtitle: widget.subtitle,
          title: widget.title,
          key: widget.key,
          image: widget.image,
          subtitleStyle: widget.subtitleStyle,
        ),
        tablet: (context) => Heroe3Tab(
          buttons: widget.buttons,
          titleStyle: widget.titleStyle,
          subtitle: widget.subtitle,
          title: widget.title,
          key: widget.key,
          image: widget.image,
          subtitleStyle: widget.subtitleStyle,
        ),
      ),
    );
  }
}
