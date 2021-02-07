import "package:flutter/material.dart";

import "./Quiz.dart";
import "./Result.dart";

class MainQuiz extends StatefulWidget {
  @override
  _MainQuizState createState() => _MainQuizState();
}

class _MainQuizState extends State<MainQuiz> {
  var questions = [
    {
      "questionText": "What\'s your favourite color?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 5},
        {"text": "Green", "score": 3},
        {"text": "White", "score": 1}
      ],
    },
    {
      "questionText": "What\'s your favourite animal?",
      "answers": [
        {"text": "Rabbit", "score": 2},
        {"text": "Snake", "score": 20},
        {"text": "Elephant", "score": 2},
        {"text": "Lion", "score": 5}
      ],
    },
    {
      "questionText": "What\'s your favourite season?",
      "answers": [
        {"text": "Winter", "score": 20},
        {"text": "Spring", "score": 1},
        {"text": "Summer", "score": 0},
        {"text": "Autumn", "score": 5}
      ],
    },
  ];
  int questionIndex = 0;
  int score = 0;
  void answerQuestion(int answerScore) {
    setState(() {
      questionIndex += 1;
      score += answerScore;
    });
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: questionIndex < questions.length
          ? Quiz(
              questionText: questions[questionIndex]['questionText'],
              questionAnswers: questions[questionIndex]['answers'],
              answerQuestion: answerQuestion,
            )
          : Result(score, resetQuiz),
    );
  }
}
