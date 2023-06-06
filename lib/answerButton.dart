import 'package:flutter/material.dart';
import 'answerButton.dart';

class AnswerButton extends StatelessWidget {

  final void Function() handleAnswer;

  String label;

  AnswerButton(this.handleAnswer, this.label);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
          foregroundColor: Colors.black87,
        ),
        onPressed: handleAnswer,
        child: Text(label)
      ),
    );
  }
}