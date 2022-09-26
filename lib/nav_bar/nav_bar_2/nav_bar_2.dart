import 'package:flutter/material.dart';
import 'package:flutterbase/nav_bar/nav_bar_2/nav_bar_2_mobile.dart';
import 'package:flutterbase/nav_bar/nav_bar_2/nav_bar_2_tab.dart';
import 'package:flutterbase/nav_bar/nav_bar_2/nav_bar_2_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar2 extends StatefulWidget {
  const NavBar2({
    super.key,
    this.navBarActions,
    this.backgroundColor,
    this.showDivider = true,
  });

  //navBarActions refers to the action widgets in the navigation bar
  final List<Widget>? navBarActions;

  ///backgroundColor  refers to the background color of the navigation bar [DEFAULT] is Transparent
  final Color? backgroundColor;

  ///showDivider refers to the divider in the navigation bar at the bottom of the navigation bar
  final bool showDivider;

  @override
  State<NavBar2> createState() => _NavBar2State();
}

class _NavBar2State extends State<NavBar2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16, 16, 8),
      child: Column(
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              return ScreenTypeLayout.builder(
                mobile: (BuildContext context) => Navbar2Mobile(
                  navBarActions: widget.navBarActions ?? [],
                  backgroundColor: widget.backgroundColor ?? Colors.transparent,
                ),
                tablet: (BuildContext context) => Navbar2Tab(
                  navBarActions: widget.navBarActions ?? [],
                  backgroundColor: widget.backgroundColor ?? Colors.transparent,
                ),
                desktop: (BuildContext context) => Navbar2Web(
                  navBarActions: widget.navBarActions ?? [],
                  backgroundColor: widget.backgroundColor ?? Colors.transparent,
                ),
              );
            },
          ),
          widget.showDivider ? const Divider() : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
