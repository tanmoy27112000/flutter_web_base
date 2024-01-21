import 'package:flutter/material.dart';

import 'package:responsive_builder/responsive_builder.dart';

import 'gridview_mobile.dart';
import 'gridview_tab.dart';
import 'gridview_web.dart';

class GridViewLayout extends StatefulWidget {
  final List<String> titles;

  const GridViewLayout({
    Key? key,
    required this.titles,
  }) : super(key: key);

  @override
  _GridViewLayoutState createState() => _GridViewLayoutState();
}

class _GridViewLayoutState extends State<GridViewLayout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ResponsiveBuilder(
          builder: (context, sizingInformation) {
            if (sizingInformation.isMobile) {
              return GridMobile(
                titles: widget.titles,
              );
            }

            if (sizingInformation.isTablet) {
              return GridTab(
                titles: widget.titles,
              );
            }

            return GridWeb(
              titles: widget.titles,
            );
          },
        );
      },
    );
  }
}
