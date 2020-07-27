//
//
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, String this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      child: RaisedButton(
        color: Colors.blue[400],
        textColor: Colors.white,
        child: Text(
          answerText,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
