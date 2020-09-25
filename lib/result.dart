import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 6) {
      resultText = 'You\'re awesome and innocent!';
    } else if (resultScore <= 10) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You\'re strange?!';
    } else {
      resultText = 'You\'re so bad!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text('Restart quiz!'),
          textColor: Colors.blue,
          onPressed: resetHandler,
        ),
      ],
    ));
  }
}
