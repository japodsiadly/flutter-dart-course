import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function reset;

  Result(this.resultScore, this.reset);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 4) {
      resultText = 'You did great';
    } else if (resultScore <= 5) {
      resultText = 'You did good';
    } else {
      resultText = 'You did Meh...';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text(
              'Restart Quiz!',
            ),
            style: TextButton.styleFrom(
              primary: Colors.green,
            ),
            onPressed: reset,
          )
        ],
      ),
    );
  }
}
