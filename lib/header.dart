import 'package:flutter/material.dart';

AppBar AppHeader(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.yellow, // Matching the button color
    title: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            'assets/logo.png', // Replace with your logo path
            height: 40,
            fit: BoxFit.cover,
          ),
        ),
        //SizedBox(width: 10),
        //Text('Sarthi'),
      ],
    ),
    actions: [
      // User icon with dropdown menu
      PopupMenuButton<String>(
        icon: const Icon(Icons.account_circle, size: 42),
        onSelected: (value) {
          print('Selected: $value'); // Debug statement
          if (value == 'Profile') {
            // Navigate to Profile page
            Navigator.pushNamed(context, '/ProfilePage');
          } else if (value == 'Change Password') {
            // Navigate to Change Password page
            Navigator.pushNamed(context, '/ChangePasswordPage');
          } else if (value == 'Logout') {
            // Perform logout, then navigate to login page
            Navigator.pushReplacementNamed(context, '/AdminLogin');
          }
        },
        itemBuilder: (context) => [
          const PopupMenuItem(
            value: 'Profile',
            child: Text('Profile'),
          ),
          const PopupMenuItem(
            value: 'Change Password',
            child: Text('Change Password'),
          ),
          const PopupMenuItem(
            value: 'Logout',
            child: Text('Logout'),
          ),
        ],
      ),
    ],
  );
}
