import 'package:flutter/material.dart';

class Footer1Mobile extends StatefulWidget {
  final String title;
  final TextStyle? titleStyle;
  final Widget logo;
  final List<Widget>? action;
  const Footer1Mobile({
    super.key,
    required this.title,
    this.titleStyle,
    required this.logo,
    this.action,
  });

  @override
  State<Footer1Mobile> createState() => _Footer1MobileState();
}

class _Footer1MobileState extends State<Footer1Mobile> {
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
              Text(widget.title),
              widget.logo,
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
