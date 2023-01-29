import 'package:flutter/material.dart';

class Footer2Mobile extends StatefulWidget {
  final String title;
  final TextStyle? titleStyle;
  final Widget logo;
  final List<Widget>? action;
  const Footer2Mobile({
    super.key,
    required this.title,
    this.titleStyle,
    required this.logo,
    this.action,
  });

  @override
  State<Footer2Mobile> createState() => _Footer2MobileState();
}

class _Footer2MobileState extends State<Footer2Mobile> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                width: MediaQuery.of(context).size.width / 4,
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
