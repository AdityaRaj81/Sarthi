import 'package:flutter/material.dart';

class AddUser extends StatefulWidget {
  const AddUser({super.key});

  @override
  _AddUserState createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  final _formKey = GlobalKey<FormState>();
  String? _name, _enrollmentNo, _institute, _course, _address, _state, _pincode, _phone, _email, _boardingPoint, _shift;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add User'),
        backgroundColor: Colors.yellow,
      ),
      body: SingleChildScrollView( // Enable scrolling
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Full Name'),
                  validator: (value) => value!.isEmpty ? 'Enter name' : null,
                  onSaved: (value) => _name = value,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Enrollment Number'),
                  validator: (value) => value!.isEmpty ? 'Enter enrollment number' : null,
                  onSaved: (value) => _enrollmentNo = value,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Institute'),
                  validator: (value) => value!.isEmpty ? 'Enter institute' : null,
                  onSaved: (value) => _institute = value,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Course'),
                  validator: (value) => value!.isEmpty ? 'Enter course' : null,
                  onSaved: (value) => _course = value,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Address'),
                  validator: (value) => value!.isEmpty ? 'Enter address' : null,
                  onSaved: (value) => _address = value,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'State'),
                  validator: (value) => value!.isEmpty ? 'Enter state' : null,
                  onSaved: (value) => _state = value,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Pincode'),
                  validator: (value) => value!.isEmpty ? 'Enter pincode' : null,
                  onSaved: (value) => _pincode = value,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Phone Number'),
                  validator: (value) => value!.isEmpty ? 'Enter phone number' : null,
                  onSaved: (value) => _phone = value,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Email ID'),
                  validator: (value) => value!.isEmpty ? 'Enter email ID' : null,
                  onSaved: (value) => _email = value,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Boarding Point'),
                  validator: (value) => value!.isEmpty ? 'Enter boarding point' : null,
                  onSaved: (value) => _boardingPoint = value,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Shift'),
                  validator: (value) => value!.isEmpty ? 'Enter shift' : null,
                  onSaved: (value) => _shift = value,
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('User $_name added successfully!'),
                          //backgroundColor: Colors.yellow,
                        ));
                      }
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                    child: const Text('Add User'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
