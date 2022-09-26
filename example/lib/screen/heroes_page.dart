import 'package:flutter/material.dart';
import 'package:flutterbase/flutterbase.dart';

class HeroesScreen extends StatefulWidget {
  const HeroesScreen({super.key});

  @override
  State<HeroesScreen> createState() => _HeroesScreenState();
}

class _HeroesScreenState extends State<HeroesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Heroes1(
            logo: const FlutterLogo(size: 100),
            subtitle:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            title: "Flutterbase",
            buttons: [
              ElevatedButton(
                onPressed: () {},
                child: const Text("Primary button"),
              ),
              const SizedBox(
                width: 20,
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Primary button"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
