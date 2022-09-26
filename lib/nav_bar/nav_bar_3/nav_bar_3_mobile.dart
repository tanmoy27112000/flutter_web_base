import 'package:flutter/material.dart';

class Navbar3Mobile extends StatefulWidget {
  const Navbar3Mobile({
    super.key,
    required this.navBarActions,
    required this.backgroundColor,
    required this.navBarCenterItems,
    required this.logo,
    this.alignLeft = false,
  });

  //navBarActions refers to the action widgets in the navigation bar
  final List<Widget> navBarActions;

  ///backgroundColor  refers to the background color of the navigation bar [DEFAULT] is Transparent
  final Color backgroundColor;

  ///nanBarCenterItems refers to the center element in the navigation bar
  final List<Widget> navBarCenterItems;

  ///log refers to the image in the navigation bar
  final Widget logo;

  ///alignLeft refers to the flag to set the center nav items to the left of the navigation bar
  final bool alignLeft;

  @override
  State<Navbar3Mobile> createState() => _Navbar3MobileState();
}

class _Navbar3MobileState extends State<Navbar3Mobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.backgroundColor,
      height: AppBar().preferredSize.height,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          widget.logo,
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
