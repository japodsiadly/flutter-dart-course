import 'package:flutter/material.dart';

class DisplayText extends StatelessWidget {
  final String textToDisplay;

  DisplayText(this.textToDisplay);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        textToDisplay,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
