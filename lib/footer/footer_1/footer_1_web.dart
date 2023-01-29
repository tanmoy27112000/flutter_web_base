import 'package:flutter/material.dart';

class Footer1Web extends StatefulWidget {
  final String title;
  final TextStyle? titleStyle;
  final Widget logo;
  final List<Widget>? action;
  const Footer1Web({
    super.key,
    required this.title,
    this.titleStyle,
    required this.logo,
    this.action,
  });

  @override
  State<Footer1Web> createState() => _Footer1WebState();
}

class _Footer1WebState extends State<Footer1Web> {
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
              Text(widget.title),
              widget.logo,
              Row(
                mainAxisSize: MainAxisSize.min,
                children: widget.action ?? [],
              )
            ],
          )
        ],
      ),
    );
  }
}
