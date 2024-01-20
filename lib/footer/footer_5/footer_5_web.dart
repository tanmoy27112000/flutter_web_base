import 'package:flutter/material.dart';

class Footer5Web extends StatefulWidget {
  final String title;
  final String text;
  final TextStyle? titleStyle;
  final Widget logo;
  final List<Widget>? action;
  final List<Widget>? newsletter;
  final List<Widget>? socials;
  const Footer5Web({
    super.key,
    required this.title,
    this.titleStyle,
    required this.logo,
    this.action,
    this.newsletter,
    this.socials,
    required this.text,
  });

  @override
  State<Footer5Web> createState() => _Footer5State();
}

class _Footer5State extends State<Footer5Web> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 32,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(widget.text,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold)),
                  Wrap(
                    direction: Axis.vertical,
                    alignment: WrapAlignment.center,
                    children: widget.action ?? [],
                  ),
                ],
              ),
              Column(
                children: [
                  Text(widget.text,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold)),
                  Wrap(
                    direction: Axis.vertical,
                    alignment: WrapAlignment.center,
                    children: widget.action ?? [],
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    widget.text,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Wrap(
                    direction: Axis.vertical,
                    alignment: WrapAlignment.center,
                    children: widget.action ?? [],
                  ),
                ],
              ),
              Column(
                children: [
                  Wrap(
                    direction: Axis.vertical,
                    alignment: WrapAlignment.center,
                    children: widget.newsletter ?? [],
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.title),
              Wrap(
                spacing: 8,
                alignment: WrapAlignment.center,
                children: widget.socials ?? [],
              )
            ],
          )
        ],
      ),
    );
  }
}
