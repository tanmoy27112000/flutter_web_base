import 'package:flutter/material.dart';

class Heroe3Tab extends StatefulWidget {
  const Heroe3Tab({
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
  State<Heroe3Tab> createState() => _Heroe3TabState();
}

class _Heroe3TabState extends State<Heroe3Tab> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.5,
            height: MediaQuery.of(context).size.height / 3.5,
            child: widget.image,
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
            width: MediaQuery.of(context).size.width / 1.5,
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
          ),
        ],
      ),
    );
  }
}
