import 'package:flutter/material.dart';

class Footer3Mobile extends StatefulWidget {
  final String title;
  final TextStyle? titleStyle;
  final Widget logo;
  final List<Widget>? action;
  const Footer3Mobile({
    super.key,
    required this.title,
    this.titleStyle,
    required this.logo,
    this.action,
  });

  @override
  State<Footer3Mobile> createState() => _Footer3MobileState();
}

class _Footer3MobileState extends State<Footer3Mobile> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}