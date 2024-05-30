import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FullScreenImagePage(),
                  ),
                );
              },
              child: const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('images/user.jpeg'),
              ),
            ),
            const SizedBox(height: 25),
            const Text(
              'Nama: Ervin Wijaya',
              style: TextStyle(fontSize: 28),
            ),
            const SizedBox(height: 14),
            const Text(
              'NIM: 1152200014',
              style: TextStyle(fontSize: 28),
            ),
          ],
        ),
      ),
    );
  }
}

class FullScreenImagePage extends StatelessWidget {
  const FullScreenImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Full Screen Image'),
      ),
      body: Center(
        child: Image.asset('images/user.jpeg'),
      ),
    );
  }
}
