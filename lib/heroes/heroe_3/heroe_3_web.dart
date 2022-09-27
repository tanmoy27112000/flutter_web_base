import 'package:flutter/material.dart';

class Heroe3Web extends StatefulWidget {
  const Heroe3Web({
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
  State<Heroe3Web> createState() => _Heroe3WebState();
}

class _Heroe3WebState extends State<Heroe3Web> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.5,
            height: MediaQuery.of(context).size.height / 2.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  widget.title ?? "",
                  style: widget.titleStyle ??
                      const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Text(
                    widget.subtitle,
                    textAlign: TextAlign.start,
                    style: widget.subtitleStyle,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ...widget.buttons,
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.5,
            height: MediaQuery.of(context).size.height / 2.5,
            child: widget.image,
          )
        ],
      ),
    );
  }
}
