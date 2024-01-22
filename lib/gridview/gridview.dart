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
      builder: (context, constraints) => ScreenTypeLayout.builder(
        mobile: (context) => GridMobile(
          titles: widget.titles,
        ),
        tablet: (context) => GridTab(
          titles: widget.titles,
        ),
        desktop: (context) => GridWeb(
          titles: widget.titles,
        ),
      ),
    );
  }
}