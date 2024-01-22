import 'package:flutter/material.dart';
import 'package:flutter_web_base/grid_view/model/grid_view_model.dart';

class GridView1Mobile extends StatefulWidget {
  const GridView1Mobile({Key? key, required this.gridData}) : super(key: key);

  final List<GridViewModel> gridData;

  @override
  _GridMobileState createState() => _GridMobileState();
}

class _GridMobileState extends State<GridView1Mobile> {
  Map<int, bool> isHovering = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1,
        shrinkWrap: true,
        children: List.generate(8, (index) {
          isHovering[index] ??= false;
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: MouseRegion(
              onHover: (event) {
                setState(() {
                  isHovering[index] = true;
                });
              },
              onExit: (event) {
                setState(() {
                  isHovering[index] = false;
                });
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 1.5,
                height: MediaQuery.of(context).size.height / 5,
                color: isHovering[index] ?? false
                    ? const Color.fromARGB(255, 249, 95, 75)
                    : const Color.fromARGB(255, 118, 177, 230),
                child: Center(
                  child: Text(widget.gridData[index].title),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
