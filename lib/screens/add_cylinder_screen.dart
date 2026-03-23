import 'package:flutter/material.dart';

class AddCylinderScreen extends StatelessWidget {
  // Form key
  final _formKey = GlobalKey<FormState>();

  // Text editing controllers
  final TextEditingController _cylinderNameController = TextEditingController();
  final TextEditingController _cylinderWeightController = TextEditingController();
  final TextEditingController _cylinderPriceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add New Cylinder')), 
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _cylinderNameController,
                decoration: InputDecoration(labelText: 'Cylinder Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter cylinder name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _cylinderWeightController,
                decoration: InputDecoration(labelText: 'Cylinder Weight (in kg)'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter cylinder weight';
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                controller: _cylinderPriceController,
                decoration: InputDecoration(labelText: 'Cylinder Price'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter cylinder price';
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Logic to add cylinder details can be added here
                    // You can call an API or save to database
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Cylinder Added Successfully!')),
                    );
                  }
                },
                child: Text('Add Cylinder'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}