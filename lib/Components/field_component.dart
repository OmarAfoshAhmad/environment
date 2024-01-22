
import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  final double height;
  final double horizontal;
  final double vertical;
  final Color background;
  final Color foreground;
  final Color borderColor;
  final double borderWidth;
  final double borderRounded;
  final controller;
  
  const TextFieldComponent({
    super.key,
    this.height = 40,
    this.horizontal = 20,
    this.vertical = 5,
    this.background = Colors.white,
    this.foreground = Colors.black,
    this.borderColor = Colors.red,
    this.borderWidth = 1,
    this.borderRounded = 10,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      height: height,
      child: TextFormField(
        controller: controller,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          filled: true,
          fillColor: background,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRounded),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRounded),
            borderSide: BorderSide(width: borderWidth, color: borderColor),
          ),
        ),
      ),
    );
  }
  
}
