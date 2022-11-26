import 'package:flutter/material.dart';

enum TagType {
  done,
  custom,
  inProgress,
  delayed,
}

getBorderColor(TagType tagType) {
    switch (tagType) {
      case TagType.done:
        return Colors.green;
      case TagType.inProgress:
        return Colors.blue;
      case TagType.delayed:
        return Colors.red;
      default:
        return Colors.black;
    }
  }

  getBackgroundColor(TagType tagType) {
    switch (tagType) {
      case TagType.done:
        return Colors.green[100];
      case TagType.inProgress:
        return Colors.blue[100];
      case TagType.delayed:
        return Colors.red[100];
      default:
        return Colors.white;
    }
  }

  getTextStyle(TagType tagType) {
    switch (tagType) {
      case TagType.done:
        return const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.green,
        );
      case TagType.inProgress:
        return const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.blue,
        );
      case TagType.delayed:
        return const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.red,
        );
      default:
        return const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        );
    }
  }