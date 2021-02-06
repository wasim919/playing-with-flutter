import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int score;
  final Function resetQuiz;

  Result(this.score, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (score <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (score <= 12) {
      resultText = 'Pretty likeable!';
    } else if (score <= 16) {
      resultText = 'You\'re strange?!';
    } else {
      resultText = 'You\'re so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 16,
        ),
        RaisedButton(
          onPressed: resetQuiz,
          child: Text(
            "Reset quiz!",
          ),
        )
      ],
    ));
  }
}
