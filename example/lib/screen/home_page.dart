import 'package:flutter/material.dart';
import 'package:flutterbase/flutterbase.dart';

class Homepage extends StatelessWidget {
  const Homepage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body: Column(
        children: <Widget>[
          NavBar1(
            title: const Text("Flutterbase"),
            logo: const FlutterLogo(
              size: 40,
            ),
            navBarActions: [
              TextButton(
                onPressed: () {},
                child: const Text("Home"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Features"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Pricing"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("FAQs"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("About"),
              ),
            ],
          ),
          NavBar2(
            navBarActions: [
              TextButton(
                onPressed: () {},
                child: const Text("Home"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Features"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Pricing"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("FAQs"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("About"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
