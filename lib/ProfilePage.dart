import 'package:flutter/material.dart';
import 'package:sarthi/header.dart';

class ProfilePage extends StatelessWidget {
  final String userName = "Moxika Vaghela";
  final String userEmail = "moxika@example.com";
  final String userPhone = "9876543210";

  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(context), // Include the common header
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Profile',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            _buildProfileItem(Icons.person, 'Name', userName),
            _buildProfileItem(Icons.email, 'Email', userEmail),
            _buildProfileItem(Icons.phone, 'Phone', userPhone),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement profile editing functionality
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow[700],
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: const Text('Edit Profile', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          "Copyright @ Route Ranger 2024-1.0",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
      ),
    );
  }

  Widget _buildProfileItem(IconData icon, String label, String value) {
    return ListTile(
      leading: Icon(icon, color: Colors.yellow[700]),
      title: Text(label),
      subtitle: Text(value, style: const TextStyle(fontSize: 16)),
    );
  }
}
