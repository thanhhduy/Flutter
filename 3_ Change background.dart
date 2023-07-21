import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;
  List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.amber,
    Colors.grey
  ];
  Color backgroundColor = Colors.white;

  void Counter() {
    setState(() {
      counter++;
      if (counter % 2 == 0) {
        backgroundColor = getRandomColor();
      }
    });
  }

  Color getRandomColor() {
    Random random = Random();
    return colors[random.nextInt(colors.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Homework'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Counter();
          },
          child: Text('Click me to change background color!'),
        ),
      ),
      backgroundColor: backgroundColor,
    );
  }
}
