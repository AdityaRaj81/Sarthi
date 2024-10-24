// lib/ExistingDriver.dart

import 'package:flutter/material.dart';

class ExistingDriver extends StatelessWidget {
  final List<Map<String, String>> drivers = [
    {"name": "John Doe", "license": "DL123456", "contact": "9876543210"},
    {"name": "Jane Smith", "license": "DL234567", "contact": "9876543211"},
    {"name": "Alice Johnson", "license": "DL345678", "contact": "9876543212"},
    {"name": "Bob Brown", "license": "DL456789", "contact": "9876543213"},
    {"name": "Charlie Davis", "license": "DL567890", "contact": "9876543214"},
    {"name": "Diana Prince", "license": "DL678901", "contact": "9876543215"},
    {"name": "Ethan Hunt", "license": "DL789012", "contact": "9876543216"},
    {"name": "Fiona Green", "license": "DL890123", "contact": "9876543217"},
    {"name": "George Harris", "license": "DL901234", "contact": "9876543218"},
    {"name": "Hannah Lee", "license": "DL012345", "contact": "9876543219"},
  ];

  const ExistingDriver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Existing Drivers'),
        backgroundColor: Colors.yellow,
      ),
      body: ListView.builder(
        itemCount: drivers.length,
        itemBuilder: (context, index) {
          final driver = drivers[index];
          return ListTile(
            title: Text(driver['name']!),
            subtitle: Text('License: ${driver['license']} | Contact: ${driver['contact']}'),
          );
        },
      ),
    );
  }
}
