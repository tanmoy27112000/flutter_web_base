import 'package:flutter/material.dart';
import 'package:flutterbase/nav_bar/nav_bar_3/nav_bar_3_mobile.dart';
import 'package:flutterbase/nav_bar/nav_bar_3/nav_bar_3_tab.dart';
import 'package:flutterbase/nav_bar/nav_bar_3/nav_bar_3_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar3 extends StatefulWidget {
  const NavBar3({
    super.key,
    this.navBarActions,
    this.logo,
    this.backgroundColor,
    this.showDivider = true,
    this.navBarCenterItems,
    this.alignLeft = false,
  });

  ///log refers to the image in the navigation bar
  final Widget? logo;

  //navBarActions refers to the action widgets in the navigation bar
  final List<Widget>? navBarActions;

  ///backgroundColor  refers to the background color of the navigation bar [DEFAULT] is Transparent
  final Color? backgroundColor;

  ///showDivider refers to the divider in the navigation bar at the bottom of the navigation bar
  final bool showDivider;

  ///nanBarCenterItems refers to the center element in the navigation bar
  final List<Widget>? navBarCenterItems;

  ///alignLeft refers to the flag to set the center nav items to the left of the navigation bar
  final bool alignLeft;

  @override
  State<NavBar3> createState() => _NavBar3State();
}

class _NavBar3State extends State<NavBar3> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16, 16, 8),
      child: Column(
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              return ScreenTypeLayout.builder(
                mobile: (BuildContext context) => Navbar3Mobile(
                  navBarActions: widget.navBarActions ?? [],
                  backgroundColor: widget.backgroundColor ?? Colors.transparent,
                  navBarCenterItems: widget.navBarCenterItems ?? [],
                  logo: widget.logo ?? const SizedBox.shrink(),
                  alignLeft: widget.alignLeft,
                ),
                tablet: (BuildContext context) => Navbar3Tab(
                  navBarActions: widget.navBarActions ?? [],
                  backgroundColor: widget.backgroundColor ?? Colors.transparent,
                  navBarCenterItems: widget.navBarCenterItems ?? [],
                  logo: widget.logo ?? const SizedBox.shrink(),
                  alignLeft: widget.alignLeft,
                ),
                desktop: (BuildContext context) => Navbar3Web(
                  navBarActions: widget.navBarActions ?? [],
                  backgroundColor: widget.backgroundColor ?? Colors.transparent,
                  navBarCenterItems: widget.navBarCenterItems ?? [],
                  logo: widget.logo ?? const SizedBox.shrink(),
                  alignLeft: widget.alignLeft,
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
