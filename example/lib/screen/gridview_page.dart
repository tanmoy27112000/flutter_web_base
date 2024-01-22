import 'package:flutter/material.dart';
import 'package:flutter_web_base/flutter_web_base.dart';
import 'package:flutter_web_base/gridview/gridview.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({super.key});

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Gridview"),
        ),
        body: const GridViewLayout(
          titles: [
            "Grid 1",
            "Grid 2",
            "Grid 3",
            "Grid 4",
            "Grid 5",
            "Grid 6",
            "Grid 7",
            "Grid 8",
          ],
        ));
  }
}
