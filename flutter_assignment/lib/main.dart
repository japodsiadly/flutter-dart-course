// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';

import './textControl.dart';
import './displayText.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _textToDisplay = "Some text to display.";

  void _changeText() {
    setState(
      () => _textToDisplay = "The text has changed!",
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Exercise 1'),
        ),
        body: Column(
          children: [
            DisplayText(_textToDisplay),
            TextControl(_changeText),
          ],
        ),
      ),
    );
  }
}
