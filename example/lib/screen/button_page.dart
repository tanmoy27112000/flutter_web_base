import 'package:flutter/material.dart';
import 'package:flutter_web_base/flutter_web_base.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({super.key});

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  List buttons = [
    const Button1(text: "Button 1"),
    const Button1Alt(text: "Button 2"),
    const Button1Round(text: "Button 3"),
    const Button1Neg(text: "Button 4"),
    const Button2(),
    const Button2Alt(),
    const Button2Round(),
    const Button2Neg(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Buttons")),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemCount: buttons.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: buttons[index],
          );
        },
      ),
    );
  }
}
