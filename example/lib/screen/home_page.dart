import 'package:example/screen/button_page.dart';
import 'package:example/screen/feature_page.dart';
import 'package:example/screen/heroes_page.dart';
import 'package:example/screen/nav_bar_screen.dart';
import 'package:example/screen/tag_page.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("flutter_web_base"),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        crossAxisCount: 5,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NavBarScreen(),
                ),
              );
            },
            child: const Text("Navbar screen"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HeroesScreen(),
                ),
              );
            },
            child: const Text("Heroes"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FeatureScreen(),
                ),
              );
            },
            child: const Text("Features"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ButtonPage(),
                ),
              );
            },
            child: const Text("Buttons"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TagPage(),
                ),
              );
            },
            child: const Text("Tags"),
          ),
        ],
      ),
    );
  }
}
