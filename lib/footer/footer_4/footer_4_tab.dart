import 'package:flutter/material.dart';

class Footer4Tablet extends StatefulWidget {
  final String title;
  final TextStyle? titleStyle;
  final Widget logo;
  final List<Widget>? action;
  const Footer4Tablet({
    super.key,
    required this.title,
    this.titleStyle,
    required this.logo,
    this.action,
  });

  @override
  State<Footer4Tablet> createState() => _Footer4TabletState();
}

class _Footer4TabletState extends State<Footer4Tablet> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}