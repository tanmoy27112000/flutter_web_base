import 'package:flutter/material.dart';
import 'package:flutter_web_base/flutter_web_base.dart';

class TagPage extends StatefulWidget {
  const TagPage({super.key});

  @override
  State<TagPage> createState() => _TagPageState();
}

class _TagPageState extends State<TagPage> {
  List tags = [
    BorderTag(),
    BorderTag(tagType: TagType.delayed),
    BorderTag(tagType: TagType.done),
    BorderTag(tagType: TagType.inProgress),
    BorderIconTag(icon: Icons.access_alarm_outlined),
    BorderIconTag(icon: Icons.access_alarm_outlined, tagType: TagType.delayed),
    BorderIconTag(icon: Icons.check, tagType: TagType.done),
    BorderIconTag(
        icon: Icons.access_alarm_outlined, tagType: TagType.inProgress),
    NoBorderTag(),
    NoBorderTag(tagType: TagType.delayed),
    NoBorderTag(tagType: TagType.done),
    NoBorderTag(tagType: TagType.inProgress),
    NoBorderIconTag(icon: Icons.access_alarm_outlined),
    NoBorderIconTag(
        icon: Icons.access_alarm_outlined, tagType: TagType.delayed),
    NoBorderIconTag(icon: Icons.check, tagType: TagType.done),
    NoBorderIconTag(
        icon: Icons.access_alarm_outlined, tagType: TagType.inProgress),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Buttons")),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, childAspectRatio: 16 / 8),
        itemCount: tags.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: tags[index],
          );
        },
      ),
    );
  }
}
