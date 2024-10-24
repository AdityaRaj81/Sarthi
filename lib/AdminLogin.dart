import 'package:flutter/material.dart';
import 'package:sarthi/AdminDashboard.dart';
import 'package:sarthi/AdminForgot.dart';

class AdminLogin extends StatelessWidget {
  const AdminLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Login'),
        backgroundColor: Colors.yellow,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Image placeholder (University image)
            Image.asset(
              'assets/gate_landscape.jpeg',
              height: 200,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.error, color: Colors.red);
              },
            ),
            const SizedBox(height: 30),
            const Text(
              'Login to continue...',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: 'User name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AdminDashboard()),
              );
            },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                textStyle: const TextStyle(fontSize: 18),
              ),  // Handle login logic

              child: const Text('Login'),
            ),
            const SizedBox(height: 10),
            Center(
              child: TextButton(
                onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AdminForgot()),
                );
              }, // Handle forgot password logic
                child: const Text('Forgot password?'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
