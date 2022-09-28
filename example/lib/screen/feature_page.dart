import 'package:flutter/material.dart';
import 'package:flutter_web_base/flutter_web_base.dart';

class FeatureScreen extends StatefulWidget {
  const FeatureScreen({super.key});

  @override
  State<FeatureScreen> createState() => _FeatureScreenState();
}

class _FeatureScreenState extends State<FeatureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Feature1(
              featureTitle: const Text(
                "Columns with icons",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              iconList: const [
                Icons.featured_play_list_outlined,
                Icons.person,
                Icons.settings
              ],
              titleList: const [
                "Featured tile",
                "Featured tile",
                "Featured tile",
              ],
              subtitleList: const [
                "Paragraph of text beneath the heading to explain the heading. We'll add onto it with another sentence and probably just keep going until we run out of words.",
                "Paragraph of text beneath the heading to explain the heading. We'll add onto it with another sentence and probably just keep going until we run out of words.",
                "Paragraph of text beneath the heading to explain the heading. We'll add onto it with another sentence and probably just keep going until we run out of words.",
              ],
              ctaButtonList: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Call to action"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Call to action"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Call to action"),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 20,
              color: Colors.grey.shade300,
            ),
            Feature2(
              featureTitle: const Text(
                "Hanging icons",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              iconList: const [
                Icons.featured_play_list_outlined,
                Icons.person,
                Icons.settings
              ],
              titleList: const [
                "Featured tile",
                "Featured tile",
                "Featured tile",
              ],
              subtitleList: const [
                "Paragraph of text beneath the heading to explain the heading. We'll add onto it with another sentence and probably just keep going until we run out of words.",
                "Paragraph of text beneath the heading to explain the heading. We'll add onto it with another sentence and probably just keep going until we run out of words.",
                "Paragraph of text beneath the heading to explain the heading. We'll add onto it with another sentence and probably just keep going until we run out of words.",
              ],
              ctaButtonList: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Call to action"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Call to action"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Call to action"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
