import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10), // Add padding if needed
      alignment: Alignment.center,
      child: const Text(
        'Copyright © Route Ranger 2024-1.0',
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    );
  }
}
