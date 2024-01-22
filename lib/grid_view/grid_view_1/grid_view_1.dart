import 'package:flutter/material.dart';
import 'package:flutter_web_base/grid_view/grid_view_1/grid_view_1_mobile.dart';
import 'package:flutter_web_base/grid_view/grid_view_1/grid_view_1_tab.dart';
import 'package:flutter_web_base/grid_view/grid_view_1/grid_view_1_web.dart';
import 'package:flutter_web_base/grid_view/model/grid_view_model.dart';
import 'package:responsive_builder/responsive_builder.dart';

class GridView1 extends StatefulWidget {
  final List<GridViewModel> gridData;

  const GridView1({
    Key? key,
    required this.gridData,
  }) : super(key: key);

  @override
  _GridView1State createState() => _GridView1State();
}

class _GridView1State extends State<GridView1> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => ScreenTypeLayout.builder(
        mobile: (context) => GridView1Mobile(
          gridData: widget.gridData,
        ),
        tablet: (context) => GridView1Tab(
          gridData: widget.gridData,
        ),
        desktop: (context) => GridView1Web(
          gridData: widget.gridData,
        ),
      ),
    );
  }
}
