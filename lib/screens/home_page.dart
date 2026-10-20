import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String? userName;
  const HomePage({super.key, this.userName});

  @override
  Widget build(BuildContext context) {
    final String displayName = userName ??
        (ModalRoute.of(context)?.settings.arguments as String?) ??
        'User name';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome back',
              style: TextStyle(fontSize: 22, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            Text(
              displayName,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
