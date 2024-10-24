// lib/ExistingRoutes.dart

import 'package:flutter/material.dart';

class ExistingRoutes extends StatelessWidget {
  final List<Map<String, String>> routes = [
    {"route": "Route A", "start": "Campus", "end": "City Center"},
    {"route": "Route B", "start": "City Center", "end": "Library"},
    {"route": "Route C", "start": "Campus", "end": "Station"},
    {"route": "Route D", "start": "Library", "end": "Gym"},
    {"route": "Route E", "start": "Station", "end": "City Park"},
    {"route": "Route F", "start": "City Center", "end": "Dormitory"},
    {"route": "Route G", "start": "Campus", "end": "Market"},
    {"route": "Route H", "start": "Market", "end": "Museum"},
    {"route": "Route I", "start": "Gym", "end": "Station"},
    {"route": "Route J", "start": "Library", "end": "Campus"},
  ];

  const ExistingRoutes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Existing Routes'),
        backgroundColor: Colors.yellow,
      ),
      body: ListView.builder(
        itemCount: routes.length,
        itemBuilder: (context, index) {
          final route = routes[index];
          return ListTile(
            title: Text(route['route']!),
            subtitle: Text('Start: ${route['start']} | End: ${route['end']}'),
          );
        },
      ),
    );
  }
}
