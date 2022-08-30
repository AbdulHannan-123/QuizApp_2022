import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:quiz_2022/answer.dart';
import 'package:quiz_2022/questions.dart';
import 'package:quiz_2022/quiz.dart';
import 'package:quiz_2022/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;
  int _totalScore=0;


  void _resetQuiz(){
   setState(() {
     index = 0;
   _totalScore=0;
   });
  }

  void increment(int score) {
    
    setState(() {
      
      _totalScore += score;
      if (index > questions.length) {
        index = 0;
      } else {
        index = index + 1;
      }
    });
  }

  @override
  var questions = [
    {
      'question': 'what is your favoraiter color',
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'red', 'score': 15},
        {'text': 'pink', 'score': 5}
      ]
    },
    {
      'question': 'what is your favoraiter animal',
      'answers': [
        {'text': 'cow', 'score': 5},
        {'text': 'hours', 'score': 10}
      ]
    }
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App 2022'),
        ),
        body: Container(
            width: double.infinity,
            child: index < questions.length
                ? Quiz(
                     questions,
                     increment,
                     index,
                  )
                : Result(_totalScore,_resetQuiz)
                ),
      ),
    );
  }
}
