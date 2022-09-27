import 'package:flutter/material.dart';
import 'package:flutter_web_base/nav_bar/nav_bar_1/nav_bar_1_mobile.dart';
import 'package:flutter_web_base/nav_bar/nav_bar_1/nav_bar_1_tab.dart';
import 'package:flutter_web_base/nav_bar/nav_bar_1/nav_bar_1_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar1 extends StatefulWidget {
  const NavBar1({
    super.key,
    this.logo,
    this.title,
    this.navBarActions,
    this.backgroundColor,
    this.showDivider = true,
  });

  ///Tile refers to the text after the logo in the navigation bar
  final Widget? title;

  ///log refers to the image in the navigation bar
  final Widget? logo;

  //navBarActions refers to the action widgets in the navigation bar
  final List<Widget>? navBarActions;

  ///backgroundColor  refers to the background color of the navigation bar [DEFAULT] is Transparent
  final Color? backgroundColor;

  ///showDivider refers to the divider in the navigation bar at the bottom of the navigation bar
  final bool showDivider;

  @override
  State<NavBar1> createState() => _NavBar1State();
}

class _NavBar1State extends State<NavBar1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16, 16, 8),
      child: Column(
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              return ScreenTypeLayout.builder(
                mobile: (BuildContext context) => Navbar1Mobile(
                  title: widget.title ?? const SizedBox.shrink(),
                  logo: widget.logo,
                  navBarActions: widget.navBarActions ?? [],
                  backgroundColor: widget.backgroundColor ?? Colors.transparent,
                ),
                tablet: (BuildContext context) => Navbar1Tab(
                  title: widget.title ?? const SizedBox.shrink(),
                  logo: widget.logo,
                  navBarActions: widget.navBarActions ?? [],
                  backgroundColor: widget.backgroundColor ?? Colors.transparent,
                ),
                desktop: (BuildContext context) => Navbar1Web(
                  title: widget.title ?? const SizedBox.shrink(),
                  logo: widget.logo,
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
