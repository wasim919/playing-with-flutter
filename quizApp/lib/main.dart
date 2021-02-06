import "package:flutter/material.dart";

import './Quiz.dart';
import "./Result.dart";

void main() => runApp(MaterialApp(home: QuizApp()));

class QuizApp extends StatefulWidget {
  @override
  QuizAppState createState() => QuizAppState();
}

class QuizAppState extends State<QuizApp> {
  var questions = [
    {
      "questionText": "What\'s your name?",
      "answers": ["ikw", "kiw", "iwk"],
    },
    {
      "questionText": "Where are you from?",
      "answers": ["somewhere", "anywhere", "everywhere"],
    },
    {
      "questionText": "Where do you live currently?",
      "answers": ["nowhere"],
    },
  ];
  int questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: questionIndex < questions.length
            ? Quiz(
                questionText: questions[questionIndex]['questionText'],
                questionAnswers: questions[questionIndex]['answers'],
                answerQuestion: answerQuestion,
              )
            : Result(),
      ),
    );
  }
}
