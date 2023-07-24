import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final color;
  final textColor;
  final String buttonText;
  final buttonTapped;

  Buttons(
      {required this.color, required this.textColor, required this.buttonText, required this.buttonTapped}){}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                  color: textColor,
                  fontSize: 24,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
