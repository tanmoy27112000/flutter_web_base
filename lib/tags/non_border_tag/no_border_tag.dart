import 'package:flutter/material.dart';
import '../utils/tag_utils.dart';

class NoBorderTag extends StatefulWidget {
  double height;
  double width;
  Color backgroundColor;

  Color textColor;
  String text;
  TextStyle textStyle;
  TagType tagType;
  NoBorderTag({
    super.key,
    this.height = 40,
    this.width = 100,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
    this.text = "Tag",
    this.textStyle = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    this.tagType = TagType.custom,
  });

  @override
  State<NoBorderTag> createState() => _NoBorderTagState();
}

class _NoBorderTagState extends State<NoBorderTag> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: widget.tagType == TagType.custom
            ? widget.backgroundColor
            : getBackgroundColor(widget.tagType),
      ),
      child: Center(
        child: Text(
          "Tag",
          style: widget.tagType == TagType.custom
              ? widget.textStyle
              : getTextStyle(widget.tagType),
        ),
      ),
    );
  }
}
