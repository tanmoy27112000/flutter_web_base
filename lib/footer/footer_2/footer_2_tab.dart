import 'package:flutter/material.dart';

class Footer2Tablet extends StatefulWidget {
  final String title;
  final TextStyle? titleStyle;
  final Widget logo;
  final List<Widget>? action;
  const Footer2Tablet({
    super.key,
    required this.title,
    this.titleStyle,
    required this.logo,
    this.action,
  });

  @override
  State<Footer2Tablet> createState() => _Footer2TabletState();
}

class _Footer2TabletState extends State<Footer2Tablet> {
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
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: Wrap(
                  alignment: WrapAlignment.end,
                  children: widget.action ?? [],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
