import 'package:flutter/material.dart';
import 'login.dart';

class ProfilePage extends StatelessWidget {
  final String username;
  const ProfilePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: const Color.fromARGB(255, 46, 172, 1),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Icon(
              Icons.account_circle,
              size: 100,
              color: const Color.fromARGB(255, 66, 230, 80),
            ),
            Text(
              'Username: $username',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                  (route) => false,
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 229, 45, 12),
                foregroundColor: Colors.white,
                minimumSize: const Size(150, 50),
              ),
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
      )
    );
  }
}