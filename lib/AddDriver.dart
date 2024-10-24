// lib/AddDriver.dart

import 'package:flutter/material.dart';

class AddDriver extends StatefulWidget {
  const AddDriver({super.key});

  @override
  _AddDriverState createState() => _AddDriverState();
}

class _AddDriverState extends State<AddDriver> {
  final _formKey = GlobalKey<FormState>();
  String? _name, _licenseNumber, _contactNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Driver'),
        backgroundColor: Colors.yellow,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Driver Name'),
                  validator: (value) => value!.isEmpty ? 'Enter driver name' : null,
                  onSaved: (value) => _name = value,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'License Number'),
                  validator: (value) => value!.isEmpty ? 'Enter license number' : null,
                  onSaved: (value) => _licenseNumber = value,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Contact Number'),
                  validator: (value) => value!.isEmpty ? 'Enter contact number' : null,
                  onSaved: (value) => _contactNumber = value,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Driver $_name added successfully!'),
                        //backgroundColor: Colors.yellow,
                      ));
                    }
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                  child: const Text('Add Driver'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
