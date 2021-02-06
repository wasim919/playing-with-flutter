import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  final int answerScore;

  Answer(this.selectHandler, this.answerText, this.answerScore);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: RaisedButton(
        onPressed: () {
          selectHandler(answerScore);
        },
        color: Colors.blue,
        child: Text(
          this.answerText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
