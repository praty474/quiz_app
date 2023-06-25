import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButon(
            currentQuestion.answers[0],
            () {},
          ),
          AnswerButon(
            currentQuestion.answers[1],
            () {},
          ),
          AnswerButon(
            currentQuestion.answers[2],
            () {},
          ),
          AnswerButon(
            currentQuestion.answers[3],
            () {},
          ),
        ],
      ),
    );
  }
}
