import 'package:flutter/material.dart';

class Footer3Tablet extends StatefulWidget {
  final String title;
  final TextStyle? titleStyle;
  final Widget logo;
  final List<Widget>? action;
  const Footer3Tablet({
    super.key,
    required this.title,
    this.titleStyle,
    required this.logo,
    this.action,
  });

  @override
  State<Footer3Tablet> createState() => _Footer3TabletState();
}

class _Footer3TabletState extends State<Footer3Tablet> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}