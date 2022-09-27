import 'package:flutter/material.dart';

class Heroe2Mobile extends StatefulWidget {
  const Heroe2Mobile({
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
  State<Heroe2Mobile> createState() => _Heroe2MobileState();
}

class _Heroe2MobileState extends State<Heroe2Mobile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          ),
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.5,
                height: MediaQuery.of(context).size.height / 5,
                child: widget.image,
              ),
              const Divider(
                height: 0,
              ),
            ],
          )
        ],
      ),
    );
  }
}
