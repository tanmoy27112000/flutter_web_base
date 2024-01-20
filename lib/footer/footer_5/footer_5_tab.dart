import 'package:flutter/material.dart';

class Footer5Tablet extends StatefulWidget {
  final String title;
  final TextStyle? titleStyle;
  final Widget logo;
  final List<Widget>? action;
  const Footer5Tablet({
    super.key,
    required this.title,
    this.titleStyle,
    required this.logo,
    this.action,
  });

  @override
  State<Footer5Tablet> createState() => _Footer5TabletState();
}

class _Footer5TabletState extends State<Footer5Tablet> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}