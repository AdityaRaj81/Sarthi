import 'package:flutter/material.dart';
import 'AdminLogin.dart';
import 'AdminDashboard.dart'; // Import AdminDashboard
import 'AddUser.dart'; // Import AddUser page
import 'ExistingUser.dart'; // Import ExistingUser page
import 'AddDriver.dart'; // Import AddDriver page
import 'ExistingDriver.dart'; // Import ExistingDriver page
import 'FeeDetails.dart'; // Import FeeDetails page
import 'Updates.dart'; // Import Updates page
import 'Feedback.dart'; // Import Feedback page
import 'Sos.dart'; // Import SOS page
import 'AddRoutes.dart'; // Import AddRoutes page
import 'ExistingRoutes.dart'; // Import ExistingRoutes page
import 'ProfilePage.dart';
import 'ChangePasswordPage.dart';
// Ensure you import your login page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sarthi',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const AdminLogin(),
      routes: {
        '/adminDashboard': (context) => const AdminDashboard(), // Route to Admin Dashboard
        '/adduser': (context) => const AddUser(), // Route to Add User page
        '/existinguser': (context) => const ExistingUser(), // Route to Existing User page
        '/adddriver': (context) => const AddDriver(), // Route to Add Driver page
        '/existingdriver': (context) => const ExistingDriver(), // Route to Existing Driver page
        '/feedetails': (context) => const FeeDetails(), // Route to Fee Details page
        '/updates': (context) => const Updates(), // Route to Updates page
        '/feedback': (context) => const FeedbackScreen(), // Route to Feedback page
        '/sos': (context) => const SOSScreen(), // Route to SOS page
        '/addroutes': (context) => const AddRoutes(), // Route to Add Routes page
        '/existingroutes': (context) => const ExistingRoutes(), // Route to Existing Routes page
        '/AdminLogin': (context) => const AdminLogin(), // Ensure AdminLogin is defined
        '/ProfilePage': (context) => const ProfilePage(),
        '/ChangePasswordPage': (context) => const ChangePasswordPage(),
      },
    );
  }
}
