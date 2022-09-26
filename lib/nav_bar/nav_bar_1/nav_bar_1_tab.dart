import 'package:flutter/material.dart';

class Navbar1Tab extends StatefulWidget {
  const Navbar1Tab({
    super.key,
    this.logo,
    required this.title,
    required this.navBarActions,
    required this.backgroundColor,
  });

  ///Tile refers to the text after the logo in the navigation bar
  final Widget title;

  ///log refers to the image in the navigation bar
  final Widget? logo;

  //navBarActions refers to the action widgets in the navigation bar
  final List<Widget> navBarActions;

  ///backgroundColor  refers to the background color of the navigation bar [DEFAULT] is Transparent
  final Color backgroundColor;

  @override
  State<Navbar1Tab> createState() => _Navbar1TabState();
}

class _Navbar1TabState extends State<Navbar1Tab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.backgroundColor,
      height: AppBar().preferredSize.height,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          widget.logo ?? const SizedBox.shrink(),
          widget.title,
          const Spacer(),
          ...widget.navBarActions,
        ],
      ),
    );
  }
}
