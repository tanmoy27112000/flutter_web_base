import 'package:flutter/material.dart';
import 'package:flutter_web_base/flutter_web_base.dart';

class FooterPage extends StatefulWidget {
  const FooterPage({super.key});

  @override
  State<FooterPage> createState() => _FooterPageState();
}

class _FooterPageState extends State<FooterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Footer"),
      ),
      body: Column(
        children: <Widget>[
          Footer1(
            title: "2023 Flutter.dev",
            logo: const FlutterLogo(),
            action: [
              TextButton(
                child: const Text("Home"),
                onPressed: () {},
              ),
              TextButton(
                child: const Text("Feature"),
                onPressed: () {},
              ),
              TextButton(
                child: const Text("Pricing"),
                onPressed: () {},
              ),
            ],
          ),
           Footer2(
             title: "2023 Flutter.dev",
            logo: const FlutterLogo(),
            action: [
              TextButton(
                child: const Text("Home"),
                onPressed: () {},
              ),
              TextButton(
                child: const Text("Feature"),
                onPressed: () {},
              ),
              TextButton(
                child: const Text("Pricing"),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
