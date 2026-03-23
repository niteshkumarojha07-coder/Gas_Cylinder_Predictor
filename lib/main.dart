import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gas Cylinder Predictor',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gas Cylinder Predictor'),
        ),
        body: Center(
          child: Text('Welcome to Gas Cylinder Predictor!'),
        ),
      ),
    );
  }
}