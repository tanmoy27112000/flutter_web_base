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
        children: const <Widget>[
          Footer1(
            achievementList: [],
          ),
          Footer2(
            achievementList: [],
          ),
        ],
      ),
    );
  }
}
