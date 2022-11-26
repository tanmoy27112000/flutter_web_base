import 'package:flutter/material.dart';
import '../utils/tag_utils.dart';

class BorderIconTag extends StatefulWidget {
  double height;
  double width;
  Color backgroundColor;
  Color borderColor;
  Color textColor;
  String text;
  TextStyle textStyle;
  IconData icon;
  TagType tagType;
  BorderIconTag({
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
    required this.icon,
  });

  @override
  State<BorderIconTag> createState() => _BorderIconTagState();
}

class _BorderIconTagState extends State<BorderIconTag> {
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
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: Text(
                "Tag",
                style: widget.tagType == TagType.custom
                    ? widget.textStyle
                    : getTextStyle(widget.tagType),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              widget.icon,
              color: widget.tagType == TagType.custom
                  ? widget.borderColor
                  : getBorderColor(
                      widget.tagType,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
