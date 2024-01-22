import 'package:flutter/material.dart';
import 'package:flutter_web_base/flutter_web_base.dart';

class TagPage extends StatefulWidget {
  const TagPage({super.key});

  @override
  State<TagPage> createState() => _TagPageState();
}

class _TagPageState extends State<TagPage> {
  List tags = [
    const BorderTag(),
    const BorderTag(tagType: TagType.delayed),
    const BorderTag(tagType: TagType.done),
    const BorderTag(tagType: TagType.inProgress),
    const BorderIconTag(icon: Icons.access_alarm_outlined),
    const BorderIconTag(icon: Icons.access_alarm_outlined, tagType: TagType.delayed),
    const BorderIconTag(icon: Icons.check, tagType: TagType.done),
    const BorderIconTag(
        icon: Icons.access_alarm_outlined, tagType: TagType.inProgress),
    const NoBorderTag(),
    const NoBorderTag(tagType: TagType.delayed),
    const NoBorderTag(tagType: TagType.done),
    const NoBorderTag(tagType: TagType.inProgress),
    const NoBorderIconTag(icon: Icons.access_alarm_outlined),
    const NoBorderIconTag(
        icon: Icons.access_alarm_outlined, tagType: TagType.delayed),
    const NoBorderIconTag(icon: Icons.check, tagType: TagType.done),
    const NoBorderIconTag(
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
