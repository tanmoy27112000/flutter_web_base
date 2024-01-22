import 'package:flutter/material.dart';

class GridMobile extends StatefulWidget {
  const GridMobile({Key? key, required this.titles}) : super(key: key);

  final List<String> titles;

  @override
  _GridMobileState createState() => _GridMobileState();
}

class _GridMobileState extends State<GridMobile> {
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
                    ? Color.fromARGB(255, 249, 95, 75)
                    : Color.fromARGB(255, 118, 177, 230),
                child: Center(
                  child: Text(widget.titles[index]),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
