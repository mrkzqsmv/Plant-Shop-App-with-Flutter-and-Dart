import 'package:flutter/material.dart';
import 'package:plant_shop_app/constants/constants.dart';

class TextFormFieldWidget extends StatefulWidget {
  final String text;
  final Icon icon;
  const TextFormFieldWidget(
      {super.key, required this.text, required this.icon});

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: Constants.mainColor.withAlpha(30),
        filled: true,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12)),
        hintText: widget.text,
        prefixIcon: widget.icon,
      ),
    );
  }
}
