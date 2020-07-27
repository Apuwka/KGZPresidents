//
//
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 2) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 3) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 5) {
      resultText = 'You\'re ... strange!';
    } else {
      resultText = 'You\'re so bad!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              resultPhrase,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36,
                color: Colors.blue,
              ),
            )),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(20),
          child: RaisedButton(
            color: Colors.blue[400],
            textColor: Colors.white,
            child: Text(
              'Restart Quiz!',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            onPressed: resetHandler,
          ),
        )
      ],
    ));
  }
}
