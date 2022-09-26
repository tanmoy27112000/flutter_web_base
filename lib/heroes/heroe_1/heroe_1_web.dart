import 'package:flutter/material.dart';

class Heroe1Web extends StatefulWidget {
  const Heroe1Web({
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
  State<Heroe1Web> createState() => _Heroe1WebState();
}

class _Heroe1WebState extends State<Heroe1Web> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          widget.logo ?? const SizedBox.shrink(),
          Text(
            widget.title ?? "",
            style: widget.titleStyle ??
                const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: Text(
              widget.subtitle,
              textAlign: TextAlign.center,
              style: widget.subtitleStyle,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...widget.buttons,
            ],
          )
        ],
      ),
    );
  }
}
