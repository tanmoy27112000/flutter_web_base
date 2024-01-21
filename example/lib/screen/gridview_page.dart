import 'package:flutter/material.dart';
import 'package:flutter_web_base/flutter_web_base.dart';
import 'package:flutter_web_base/gridview/gridview.dart';

class gridviewscreen extends StatefulWidget {
  const gridviewscreen({super.key});

  @override
  State<gridviewscreen> createState() => _gridviewscreenState();
}

class _gridviewscreenState extends State<gridviewscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Gridview"),
        ),
        body: GridViewLayout(
          titles: [
            "Grid 1",
            "Grid 2",
            "Grid 3",
            "Grid 4",
            "Grid 5",
            "Grid 6",
            "Grid 7",
            "Grid 8"
          ],
        ));
  }
}
