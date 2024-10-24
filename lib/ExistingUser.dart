import 'package:flutter/material.dart';

class ExistingUser extends StatelessWidget {
  final List<Map<String, String>> users = [
    {
      'name': 'John Doe',
      'enrollment': '12345',
      'institute': 'ABC Institute',
      'course': 'Computer Science',
      'boardingPoint': 'Main Gate',
      'shift': 'Morning',
    },
    {
      'name': 'Jane Smith',
      'enrollment': '67890',
      'institute': 'XYZ College',
      'course': 'Information Technology',
      'boardingPoint': 'Bus Stop 1',
      'shift': 'Evening',
    },
    // Add more dummy users as needed
  ];

  const ExistingUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Existing Users'),
        backgroundColor: Colors.yellow, // Yellow background for the app bar
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(user['name']!),
              subtitle: Text('Enrollment: ${user['enrollment']}\nInstitute: ${user['institute']}\nCourse: ${user['course']}'),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Boarding Point: ${user['boardingPoint']}'),
                  Text('Shift: ${user['shift']}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
