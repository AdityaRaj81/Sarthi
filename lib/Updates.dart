import 'package:flutter/material.dart';

class Updates extends StatefulWidget {
  const Updates({super.key});

  @override
  _UpdatesState createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  final _formKey = GlobalKey<FormState>();
  String? _title, _message;

  // Dummy update history data
  List<Map<String, String>> updateHistory = [
    {'title': 'Holiday Notification', 'message': 'Holiday on 25th December'},
    {'title': 'Fee Submission', 'message': 'Last date for fee submission is 30th November'},
    {'title': 'Bus Schedule Change', 'message': 'New bus schedules effective from 1st January'},
  ];

  void _postUpdate() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      setState(() {
        updateHistory.insert(0, {'title': _title!, 'message': _message!});
      });
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Update posted successfully!'),
        backgroundColor: Colors.yellow,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Post Updates'),
        backgroundColor: Colors.yellow,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'Update Title'),
                      validator: (value) => value!.isEmpty ? 'Enter update title' : null,
                      onSaved: (value) => _title = value,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'Message'),
                      maxLines: 3,
                      validator: (value) => value!.isEmpty ? 'Enter update message' : null,
                      onSaved: (value) => _message = value,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _postUpdate,
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                      child: const Text('Post Update'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                'Update History',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: updateHistory.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(updateHistory[index]['title']!),
                    subtitle: Text(updateHistory[index]['message']!),
                    leading: const Icon(Icons.history, color: Colors.blue),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
