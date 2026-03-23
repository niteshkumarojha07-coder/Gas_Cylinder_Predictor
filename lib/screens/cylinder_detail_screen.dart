import 'package:flutter/material.dart';

class CylinderDetailScreen extends StatelessWidget {
  final String cylinderId;
  final String usageLogs;

  CylinderDetailScreen({required this.cylinderId, required this.usageLogs});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cylinder Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Cylinder ID: ' + cylinderId,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Usage Logs:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(usageLogs),
          ],
        ),
      ),
    );
  }
}