import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var questions = [
    "name ?",
    "age ?",
  ];

  void answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('What\'s your favorite food ?'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text("1"),
            ),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text('2'),
            ),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text('3'),
            ),
          ],
        ),
      ),
    );
  }
}
