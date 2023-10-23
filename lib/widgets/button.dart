import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  final Color textColor;
  final Color bgColor;
  final Color borderColor;
  final String text;
  const ButtonWidget(
      {super.key,
      required this.textColor,
      required this.bgColor,
      required this.borderColor,
      required this.text});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.07,
      decoration: BoxDecoration(
          color: widget.bgColor,
          borderRadius: BorderRadius.circular(13),
          border: Border.all(color: widget.borderColor)),
      child: Center(
          child: Text(
        widget.text,
        style: TextStyle(fontSize: 17, color: widget.textColor),
      )),
    );
  }
}
