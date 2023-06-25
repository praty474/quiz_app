import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //widgets can be stored in variable
  // Widget? activeScreen;

  var activeScreen = 'start-screen';

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'Question-Screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidget =
        //this is ternary expression
        activeScreen == 'start-screen'
            ? StartScreen(switchScreen)
            : const QuestionScreen();
//different approach
    // Widget screenWidget = StartScreen(switchScreen);

    // if (activeScreen == 'Question-screen') {
    //   screenWidget = const QuestionScreen();
    // }
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 21, 2, 54),
                  Color.fromARGB(255, 91, 41, 177),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
              ),
            ),
            child: screenWidget),
      ),
    );
  }
}
