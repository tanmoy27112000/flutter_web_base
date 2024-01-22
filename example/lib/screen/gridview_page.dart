import 'package:flutter/material.dart';
import 'package:flutter_web_base/flutter_web_base.dart';

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
        body: GridView1(
          gridData: [
            GridViewModel(
              title: "title",
              image: "image",
              description: "",
            ),
          ],
        ));
  }
}
