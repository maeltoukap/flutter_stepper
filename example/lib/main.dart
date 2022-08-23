import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_stepper/flutter_stepper.dart';
import 'package:flutter_stepper_example/ressources/const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

List<Widget> page = [
  Padding(
    padding: const EdgeInsets.symmetric(vertical: 300.0),
    child: const Text("First Page"),
  ),
  Padding(
    padding: const EdgeInsets.symmetric(vertical: 300.0),
    child: const Text("Second Page"),
  ),
  Padding(
    padding: const EdgeInsets.symmetric(vertical: 300.0),
    child: const Text("Third Page"),
  ),
];
List<String> step = ["Page info 1", "Page info 2", "Page info 3"];
List<String> buttonLabel = ["Back", "Next"];

class _MyAppState extends State<MyApp> {
  // final _flutterStepperPlugin = FlutterStepper(activeColor: primaryMain,pages: page, stepInfos: step);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(),
        body: FlutterStepper(
          activeColor: primaryMain,
          pages: page,
          stepInfos: step,
          buttonLabels: buttonLabel,
        ),
      ),
    );
  }
}
