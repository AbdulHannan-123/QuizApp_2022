import 'package:flutter/cupertino.dart';
import 'answer.dart';
import 'questions.dart';

class Quiz extends StatelessWidget {

  final List<Map<String,Object>>? questions;
  final Function increment;
  final int index;

  Quiz(this.questions,  this.increment, this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              Question(questions?[index]['question'] as String),

              ...(questions?[index]['answers'] as List<Map<String,Object>>).map((answer) {
                return Answer(()=> increment(answer['score']),  answer['text']as String);
              } ).toList()
            ],
          );
  }
}