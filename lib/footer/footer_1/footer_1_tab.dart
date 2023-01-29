import 'package:flutter/material.dart';

class Footer1Tablet extends StatefulWidget {
  final String title;
  final TextStyle? titleStyle;
  final Widget logo;
  final List<Widget>? action;
  const Footer1Tablet({
    super.key,
    required this.title,
    this.titleStyle,
    required this.logo,
    this.action,
  });

  @override
  State<Footer1Tablet> createState() => _Footer1TabletState();
}

class _Footer1TabletState extends State<Footer1Tablet> {
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
