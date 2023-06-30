import 'package:flutter/material.dart';
import 'package:quiz_app/results_screen.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  Text(
                    (data['qusestion_index']).toString(),
                    style: TextStyle(
                      color: Colors.amber,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        data['question'] as String,
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(data['correct_answer'] as String,
                          style: TextStyle(
                              color: Color.fromARGB(255, 8, 132, 221))),
                      Text(data['user_answer'] as String,
                          style: TextStyle(
                              color: const Color.fromARGB(255, 221, 31, 31))),
                    ],
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
