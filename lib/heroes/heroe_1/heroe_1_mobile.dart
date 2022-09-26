import 'package:flutter/material.dart';

class Heroe1Mobile extends StatefulWidget {
  const Heroe1Mobile({
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
  State<Heroe1Mobile> createState() => _Heroe1MobileState();
}

class _Heroe1MobileState extends State<Heroe1Mobile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const FlutterLogo(
            size: 100,
          ),
          Text(
            widget.title ?? "",
            style: widget.titleStyle ??
                const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.1,
            child: Text(
              widget.subtitle,
              textAlign: TextAlign.center,
              style: widget.subtitleStyle,
            ),
          ),
          Column(
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
