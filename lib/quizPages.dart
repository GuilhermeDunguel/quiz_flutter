import 'package:flutter/material.dart';
import 'package:questions_project/answerButton.dart';
import 'package:questions_project/question.dart';

class quizPages extends StatelessWidget {

  final String QuestionText;
  final List Answers;
  final void Function(int value) handleAnswer;

  quizPages({
    required this.QuestionText,
    required this.Answers,
    required this.handleAnswer
    });

  @override
  Widget build(BuildContext context) {
    return 
      Column(
        children: <Widget>[
        Question(QuestionText),
        ...Answers.map((answer) => AnswerButton(() => handleAnswer(answer['value']), answer['text'] as String)).toList(),
        ],
      );
  }
}