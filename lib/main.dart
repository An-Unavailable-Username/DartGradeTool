import 'package:flutter/material.dart';

import 'grade_checker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Percentage to Letter Grade Calculator',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.purple,
        ),
        home: const Scaffold(
          body: LeapYearHomePage(),
        ));
  }
}

class LeapYearHomePage extends StatefulWidget {
  const LeapYearHomePage({Key? key}) : super(key: key);

  @override
  State<LeapYearHomePage> createState() => _LeapYearHomePageState();
}

class _LeapYearHomePageState extends State<LeapYearHomePage> {
  String _message = 'Type a percent to convert it to a letter grade';
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: _controller,
        ),
        ElevatedButton(
          onPressed: _onButtonPressed,
          child: Text('Convert'),
        ),
        Text(_message),
      ],
    );
  }

  void _onButtonPressed() {
    String result;
    final input = _controller.value.text;
    int? grade = int.tryParse(input);
    if (grade! <= 100) {
      final checkGrade = GradeChecker(grade);
      result = '$grade percent as a letter grade = $checkGrade';
    } else {
      result = '$grade does not compute';
    }

    setState(() {
      _message = result;
    });
  }
}
