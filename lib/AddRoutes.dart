// lib/AddRoutes.dart

import 'package:flutter/material.dart';

class AddRoutes extends StatefulWidget {
  const AddRoutes({super.key});

  @override
  _AddRoutesState createState() => _AddRoutesState();
}

class _AddRoutesState extends State<AddRoutes> {
  final _formKey = GlobalKey<FormState>();
  String? _routeName, _startPoint, _endPoint;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Routes'),
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
                  decoration: const InputDecoration(labelText: 'Route Name'),
                  validator: (value) => value!.isEmpty ? 'Enter route name' : null,
                  onSaved: (value) => _routeName = value,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Start Point'),
                  validator: (value) => value!.isEmpty ? 'Enter start point' : null,
                  onSaved: (value) => _startPoint = value,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'End Point'),
                  validator: (value) => value!.isEmpty ? 'Enter end point' : null,
                  onSaved: (value) => _endPoint = value,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Route $_routeName added successfully!'),
                        //backgroundColor: Colors.yellow,
                      ));
                    }
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                  child: const Text('Add Route'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
