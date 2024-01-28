import 'package:flutter/material.dart';
import 'package:flutter_web_base/grid_view/model/grid_view_model.dart';

class GridView1Web extends StatefulWidget {
  const GridView1Web({Key? key, required this.gridData}) : super(key: key);

  final List<GridViewModel> gridData;

  @override
  _GridView1WebState createState() => _GridView1WebState();
}

class _GridView1WebState extends State<GridView1Web> {
  Map<int, bool> isHovering = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 4,
        childAspectRatio: 1.1,
        shrinkWrap: true,
        children: List.generate(widget.gridData.length, (index) {
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
                padding:  EdgeInsets.only(left: 8, right: 8, bottom: 8),
                width: MediaQuery.of(context).size.width / 1.5,
                height: MediaQuery.of(context).size.height / 5,
                color: isHovering[index] ?? false
                    ? Color.fromARGB(255, 241, 186, 184)
                    : const Color.fromARGB(255, 118, 177, 230),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      widget.gridData[index].imageUrl,
                     
                    ),
                    Text(widget.gridData[index].title,
                        style: const TextStyle(fontSize: 18),
                        textAlign: TextAlign.start),
                    Text(
                      widget.gridData[index].description,
                      style: const TextStyle(fontSize: 14),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
