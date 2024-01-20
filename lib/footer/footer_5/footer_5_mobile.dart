import 'package:flutter/material.dart';

class Footer5Mobile extends StatefulWidget {
  final String title;
  final TextStyle? titleStyle;
  final Widget logo;
  final List<Widget>? action;
  const Footer5Mobile({
    super.key,
    required this.title,
    this.titleStyle,
    required this.logo,
    this.action,
  });

  @override
  State<Footer5Mobile> createState() => _Footer5MobileState();
}

class _Footer5MobileState extends State<Footer5Mobile> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}