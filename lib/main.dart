import 'package:flutter/material.dart';
import 'package:questions_project/quizPages.dart';
import 'package:questions_project/resultPage.dart';


main() => runApp(QuizApp());

class QuizAppState extends State<QuizApp> {
  var _selectedQuestion = 0;
  var _totalValue = 0;
  
  final List<Map<String, Object>> _questions = const [
      {
        'question': 'Qual é a sua cor favorita?',
        'answers': [
          {'text': 'Vermelho', 'value': 10},
          {'text': 'Azul', 'value': 20},
          {'text': 'Rosa', 'value': 30},
          {'text': 'Amarelo', 'value': 40},
        ]
      },
      {
        'question': 'Qual é o seu animal favorito?',
        'answers': [
          {'text': 'Gato', 'value': 10}, 
          {'text': 'Cachorro', 'value': 20}, 
          {'text': 'Avião', 'value': 30}, 
          {'text': 'Roedor', 'value': 40},
        ]
      },
      {
        'question': 'Qual sua linguagem favorita?',
        'answers': [
          {'text': 'C', 'value': 10}, 
          {'text': 'JavaScript', 'value': 20}, 
          {'text': 'Dart', 'value': 30}, 
          {'text': 'Python', 'value': 40},
        ]
      },
    ];

  void _handleAnswer(int value) {
      setState(() {
        _selectedQuestion++;
        _totalValue += value;
      });
  }

  void _handleReset() {
    setState(() {
      _selectedQuestion = 0;
      _totalValue = 0;
    });
  }

  bool get hasQuestionSelected {
    return _selectedQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {

    List<Map<String, Object>> quizAnswers = hasQuestionSelected ? _questions[_selectedQuestion].cast()['answers'] as List<Map<String, Object>> : [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: 
          hasQuestionSelected ? 
          quizPages(QuestionText: _questions[_selectedQuestion]['question'].toString(), Answers: quizAnswers, handleAnswer: _handleAnswer,)
          : 
          resultPage('Parabéns!', _totalValue.toString(), _handleReset),
      )
    );
  }
}

class QuizApp extends StatefulWidget {

  State<QuizApp> createState() {
    return QuizAppState();
  }
}
