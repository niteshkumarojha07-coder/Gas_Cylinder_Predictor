import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gas Cylinder Predictor'),
      ),
      body: Center(
        child: Text(
          'Welcome to the Gas Cylinder Predictor App',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}