import 'package:flutter/material.dart';

class Footer4Web extends StatefulWidget {
  final String title;
  final String text;
  final TextStyle? titleStyle;
  final Widget logo;
  final List<Widget>? action;
  const Footer4Web({
    super.key,
    required this.title,
    this.titleStyle,
    required this.logo,
    this.action,
    required this.text,
  });

  @override
  State<Footer4Web> createState() => _Footer4State();
}

class _Footer4State extends State<Footer4Web> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 32,
      ),
      child: Column(
        children: [
          const Divider(),
          const SizedBox(
            height: 20,
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  widget.logo,
                  Text(widget.title),
                  const SizedBox(height: 50)
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  Text(widget.text,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold)),
                  Wrap(
                    direction: Axis.vertical,
                    children: widget.action ?? [],
                  ),
                ],
              ),
              const SizedBox(
                width: 200,
              ),
              Column(
                children: [
                  Text(widget.text,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold)),
                  Wrap(
                    direction: Axis.vertical,
                    children: widget.action ?? [],
                  ),
                ],
              ),
              const SizedBox(
                width: 200,
              ),
              Column(
                children: [
                  Text(widget.text,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold)),
                  Wrap(
                    direction: Axis.vertical,
                    children: widget.action ?? [],
                  ),
                ],
              ),
              const SizedBox(
                width: 200,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
