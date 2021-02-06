import "package:flutter/material.dart";
import 'package:quizApp/Question.dart';

import './Answer.dart';
import './Question.dart';

class Quiz extends StatelessWidget {
  final String questionText;
  final List<Map<String, Object>> questionAnswers;
  final Function answerQuestion;

  Quiz(
      {@required this.questionText,
      @required this.questionAnswers,
      @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionText),
        ...questionAnswers.map(
          (answer) {
            return Answer(answerQuestion, answer["text"], answer["score"]);
          },
        ).toList()
      ],
    );
  }
}
