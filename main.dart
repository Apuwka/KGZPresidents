import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(YMApp());
}

class YMApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _YMAppState();
  }
}

class _YMAppState extends State<YMApp> {
  final _questions = const [
    {
      'questionText': 'Who\'s your favorite president?',
      'answers': [
        {'text': 'Akaichik', 'score': 1},
        {'text': 'Kurmanchik', 'score': 2},
        {'text': 'Almazchik', 'score': 3},
        {'text': 'Sokeshka', 'score': 4},
      ],
    },
    {
      'questionText': 'Who\'s your favorite singer?',
      'answers': [
        {'text': 'Atambaev', 'score': 0},
        {'text': 'Atambaev', 'score': 0},
        {'text': 'Atambaev', 'score': 0},
        {'text': 'Atambaev', 'score': 0},
      ],
    },
    {
      'questionText': 'Kim krasavchik?',
      'answers': [
        {'text': 'Men', 'score': 1},
        {'text': 'Sen', 'score': 2},
        {'text': 'Women', 'score': 3},
        {'text': 'Wosen', 'score': 4},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    //
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('YM First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
