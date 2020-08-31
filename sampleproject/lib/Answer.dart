import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function questionChange;
  final answerString;
  Answer(this.questionChange,this.answerString);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          color: Colors.blue, child: Text(answerString), onPressed: questionChange),
    );
  }
}
