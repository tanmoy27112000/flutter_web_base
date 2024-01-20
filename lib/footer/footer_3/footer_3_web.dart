import 'package:flutter/material.dart';

class Footer3Web extends StatefulWidget {
  final String title;
  final TextStyle? titleStyle;
  final Widget logo;
  final List<Widget>? action;
  const Footer3Web({
    super.key,
    required this.title,
    this.titleStyle,
    required this.logo,
    this.action,
  });

  @override
  State<Footer3Web> createState() => _Footer3State();
}

class _Footer3State extends State<Footer3Web> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: MediaQuery.of(context).size.width * 0.02,
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            child: Wrap(
              alignment: WrapAlignment.center,
              children: widget.action ?? [],
            ),
          ),
          const SizedBox(height: 8),
          const Divider(),
          const SizedBox(height: 8),
          Text(widget.title),
        ],
      ),
    );
  }
}
