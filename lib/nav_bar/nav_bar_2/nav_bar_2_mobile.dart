import 'package:flutter/material.dart';

class Navbar2Mobile extends StatefulWidget {
  const Navbar2Mobile({
    super.key,
    required this.navBarActions,
    required this.backgroundColor,
  });

  //navBarActions refers to the action widgets in the navigation bar
  final List<Widget> navBarActions;

  ///backgroundColor  refers to the background color of the navigation bar [DEFAULT] is Transparent
  final Color backgroundColor;

  @override
  State<Navbar2Mobile> createState() => _Navbar2MobileState();
}

class _Navbar2MobileState extends State<Navbar2Mobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.backgroundColor,
      height: AppBar().preferredSize.height,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          const Spacer(),
          IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
    );
  }
}
