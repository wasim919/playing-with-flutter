import "package:flutter/material.dart";

import "./MainQuiz.dart";

void main() => runApp(MaterialApp(home: QuizApp()));

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
        centerTitle: true,
      ),
      body: MainQuiz(),
    );
  }
}
