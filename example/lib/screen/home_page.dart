import 'package:example/screen/heroes_page.dart';
import 'package:example/screen/nav_bar_screen.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutterbase"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            ],
          ),
        ));
  }
}
