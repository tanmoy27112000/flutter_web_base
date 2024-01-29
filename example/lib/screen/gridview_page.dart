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
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GridView1(
            gridData: [
              GridViewModel(
                title: "Title 1",
                imageUrl:
                    "https://miro.medium.com/v2/resize:fit:2000/1*PCKC8Ufml-wvb9Vjj3aaWw.jpeg",
                description:
                    "The GridView displayed a mosaic of data, neatly organized into rows and columns, enhancing the user's data browsing experience",
              ),
              GridViewModel(
                title: "Title 2",
                imageUrl:
                    "https://miro.medium.com/v2/resize:fit:2000/1*PCKC8Ufml-wvb9Vjj3aaWw.jpeg",
                description:
                    "Navigating through the GridView, users effortlessly explored a structured array of information, fostering efficient data comprehension",
              ),
              GridViewModel(
                title: "Title 3",
                imageUrl:
                    "https://miro.medium.com/v2/resize:fit:2000/1*PCKC8Ufml-wvb9Vjj3aaWw.jpeg",
                description:
                    "Sorting and filtering options empowered users to refine their data view within the GridView, promoting personalized data exploration",
              ),
              GridViewModel(
                title: "Title 4",
                imageUrl:
                    "https://miro.medium.com/v2/resize:fit:2000/1*PCKC8Ufml-wvb9Vjj3aaWw.jpeg",
                description:
                    "Pagination controls elegantly divided extensive datasets, preventing information overload and maintaining clarity within the GridView layout",
              ),
              GridViewModel(
                title: "Title 5",
                imageUrl:
                    "https://miro.medium.com/v2/resize:fit:2000/1*PCKC8Ufml-wvb9Vjj3aaWw.jpeg",
                description:
                    "The dynamic GridView updated in real-time, reflecting changes to underlying data sources, providing users with up-to-the-minute information",
              ),
              GridViewModel(
                title: "Title 6",
                imageUrl:
                    "https://miro.medium.com/v2/resize:fit:2000/1*PCKC8Ufml-wvb9Vjj3aaWw.jpeg",
                description:
                    "GridView customization allowed developers to tailor the visual presentation, ensuring a cohesive integration with the overall user interface design",
              ),
              GridViewModel(
                title: "Title 7",
                imageUrl:
                    "https://miro.medium.com/v2/resize:fit:2000/1*PCKC8Ufml-wvb9Vjj3aaWw.jpeg",
                description:
                    "Through advanced features like item templates and data binding, the GridView emerged as a versatile tool for displaying diverse data structures.",
              ),
              GridViewModel(
                title: "Title 8",
                imageUrl:
                    "https://miro.medium.com/v2/resize:fit:2000/1*PCKC8Ufml-wvb9Vjj3aaWw.jpeg",
                description:
                    "With responsive design, the GridView seamlessly adapted to various screen sizes, ensuring a consistent and user-friendly presentation across devices.",
              ),
            ],
          ),
        ));
  }
}
