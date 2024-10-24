import 'package:flutter/material.dart';

class SOSScreen extends StatefulWidget {
  const SOSScreen({super.key});

  @override
  _SOSScreenState createState() => _SOSScreenState();
}

class _SOSScreenState extends State<SOSScreen> {
  // Dummy user details for the SOS report
  final Map<String, String> userDetails = {
    'name': 'Aman Sharma',
    'route': 'Route 10 - Connaught Place to Delhi University',
    'busNo': 'DL 01 AB 5678',
  };

  // Dummy SOS history
  List<Map<String, String>> sosHistory = [
    {'name': 'Ananya Verma', 'route': 'Route 3', 'busNo': 'DL 08 XY 1234', 'time': '2024-09-26 14:05'},
    {'name': 'Vikram Singh', 'route': 'Route 5', 'busNo': 'DL 02 ZQ 4567', 'time': '2024-09-25 18:30'},
    {'name': 'Priya Gupta', 'route': 'Route 9', 'busNo': 'DL 05 BC 9087', 'time': '2024-09-24 10:00'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Emergency (SOS)'),
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Emergency Contacts
            const Text(
              'Emergency Contacts',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const ListTile(
              title: Text('Emergency Hotline'),
              subtitle: Text('112'),
              leading: Icon(Icons.phone, color: Colors.red),
            ),
            const ListTile(
              title: Text('Ambulance'),
              subtitle: Text('102'),
              leading: Icon(Icons.local_hospital, color: Colors.red),
            ),
            const ListTile(
              title: Text('Police'),
              subtitle: Text('100'),
              leading: Icon(Icons.local_police, color: Colors.blue),
            ),
            const SizedBox(height: 40),

            // Live SOS box in the center
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 300,
                    height: 150,
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.blueAccent, width: 2),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Live SOS Active',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'User: ${userDetails['name']}',
                          style: const TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                        Text(
                          'Route: ${userDetails['route']}',
                          style: const TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                        Text(
                          'Bus No: ${userDetails['busNo']}',
                          style: const TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  // Green live status dot
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),

            // SOS History section
            const Text(
              'SOS History',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: sosHistory.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('User: ${sosHistory[index]['name']}'),
                    subtitle: Text(
                        'Route: ${sosHistory[index]['route']}\nBus No: ${sosHistory[index]['busNo']}\nTime: ${sosHistory[index]['time']}'),
                    leading: const Icon(Icons.history, color: Colors.blue),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
