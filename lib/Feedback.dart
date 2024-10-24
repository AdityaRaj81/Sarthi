import 'package:flutter/material.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _name, _feedback;

  // Dummy feedback data
  List<Map<String, String>> feedbackList = List.generate(20, (index) {
    return {
      'name': 'User $index',
      'feedback': 'This is feedback from User $index. The system is good but needs improvement.',
      'date': '2024-09-${index + 1}'
    };
  });

  void _submitFeedback() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      setState(() {
        feedbackList.insert(0, {'name': _name!, 'feedback': _feedback!, 'date': DateTime.now().toString().split(' ')[0]});
      });
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Thank you for your feedback, $_name!'),
        backgroundColor: Colors.yellow,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Feedback'),
        backgroundColor: Colors.yellow,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [

              const SizedBox(height: 40),
              const Text(
                'All Feedback',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: feedbackList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(feedbackList[index]['name']!),
                    subtitle: Text('${feedbackList[index]['feedback']!}\nDate: ${feedbackList[index]['date']!}'),
                    leading: const Icon(Icons.feedback, color: Colors.blue),
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
