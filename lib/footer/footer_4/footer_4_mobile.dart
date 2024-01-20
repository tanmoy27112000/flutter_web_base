import 'package:flutter/material.dart';

class Footer4Mobile extends StatefulWidget {
  final String title;
  final TextStyle? titleStyle;
  final Widget logo;
  final List<Widget>? action;
  const Footer4Mobile({
    super.key,
    required this.title,
    this.titleStyle,
    required this.logo,
    this.action,
  });

  @override
  State<Footer4Mobile> createState() => _Footer4MobileState();
}

class _Footer4MobileState extends State<Footer4Mobile> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}