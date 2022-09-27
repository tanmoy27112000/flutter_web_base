import 'package:flutter/material.dart';
import 'package:flutter_web_base/heroes/heroe_2/heroe_2_mobile.dart';
import 'package:flutter_web_base/heroes/heroe_2/heroe_2_tab.dart';
import 'package:flutter_web_base/heroes/heroe_2/heroe_2_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Heroes2 extends StatefulWidget {
  const Heroes2({
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
  State<Heroes2> createState() => _Heroes2State();
}

class _Heroes2State extends State<Heroes2> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => ScreenTypeLayout.builder(
        mobile: (context) => Heroe2Mobile(
          buttons: widget.buttons,
          titleStyle: widget.titleStyle,
          subtitle: widget.subtitle,
          title: widget.title,
          key: widget.key,
          image: widget.image,
          subtitleStyle: widget.subtitleStyle,
        ),
        desktop: (context) => Heroe2Web(
          buttons: widget.buttons,
          titleStyle: widget.titleStyle,
          subtitle: widget.subtitle,
          title: widget.title,
          key: widget.key,
          image: widget.image,
          subtitleStyle: widget.subtitleStyle,
        ),
        tablet: (context) => Heroe2Tab(
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
