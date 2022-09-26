import 'package:flutter/material.dart';

class Navbar3Tab extends StatefulWidget {
  const Navbar3Tab(
      {super.key,
      required this.navBarActions,
      required this.backgroundColor,
      required this.navBarCenterItems,
      required this.logo,
      this.alignLeft = false});

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
  State<Navbar3Tab> createState() => _Navbar3TabState();
}

class _Navbar3TabState extends State<Navbar3Tab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.backgroundColor,
      height: AppBar().preferredSize.height,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          widget.logo,
          widget.alignLeft ? const SizedBox.shrink() : const Spacer(),
          widget.alignLeft
              ? const SizedBox.shrink()
              : Row(
                  children: [
                    ...widget.navBarCenterItems,
                  ],
                ),
          const Spacer(),
          ...widget.navBarActions,
          widget.alignLeft
              ? IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
