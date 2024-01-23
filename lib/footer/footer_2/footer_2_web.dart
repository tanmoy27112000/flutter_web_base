import 'package:flutter/material.dart';

class Footer2Web extends StatefulWidget {
  final String title;
  final TextStyle? titleStyle;
  final Widget logo;
  final List<Widget>? action;
  const Footer2Web({
    super.key,
    required this.title,
    this.titleStyle,
    required this.logo,
    this.action,
  });

  @override
  State<Footer2Web> createState() => _Footer2WebState();
}

class _Footer2WebState extends State<Footer2Web> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 32,
      ),
      child: Column(
        children: <Widget>[
          const Divider(),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  widget.logo,
                  Text(widget.title),
                ],
              ),
              Wrap(
                spacing: 8,
                alignment: WrapAlignment.center,
                children: widget.action ?? [],
              )
            ],
          )
        ],
      ),
    );
  }
}
