import 'package:flutter/material.dart';

class Navbar2Web extends StatefulWidget {
  const Navbar2Web({
    super.key,
    required this.navBarActions,
    required this.backgroundColor,
  });

  //navBarActions refers to the action widgets in the navigation bar
  final List<Widget> navBarActions;

  ///backgroundColor  refers to the background color of the navigation bar [DEFAULT] is Transparent
  final Color backgroundColor;

  @override
  State<Navbar2Web> createState() => _Navbar2WebState();
}

class _Navbar2WebState extends State<Navbar2Web> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.backgroundColor,
      height: AppBar().preferredSize.height,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...widget.navBarActions,
        ],
      ),
    );
  }
}
