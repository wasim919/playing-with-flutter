import "package:flutter/material.dart";

import "./Question.dart";
import "./Answer.dart";

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
    if (questionIndex < 2) {
      setState(() {
        questionIndex += 1;
      });
    } else if (questionIndex >= 1) {
      setState(() {
        questionIndex = 0;
      });
    }
    print("hello");
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
        child: Column(
          children: [
            Question(questions[questionIndex]["questionText"]),
            ...(questions[questionIndex]["answers"] as List<String>).map(
              (answer) {
                return Answer(answerQuestion, answer);
              },
            ).toList()
          ],
        ),
      ),
    );
  }
}
