import 'package:flutter/material.dart';
import '../utils/tag_utils.dart';

class BorderTag extends StatefulWidget {
  final double height;
  final double width;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;
  final String text;
  final TextStyle textStyle;
  final TagType tagType;
  const BorderTag({
    super.key,
    this.height = 40,
    this.width = 100,
    this.backgroundColor = Colors.white,
    this.borderColor = Colors.black,
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
  State<BorderTag> createState() => _BorderTagState();
}

class _BorderTagState extends State<BorderTag> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        border: Border.all(
          color: widget.tagType == TagType.custom
              ? widget.borderColor
              : getBorderColor(widget.tagType),
          width: 1,
        ),
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
