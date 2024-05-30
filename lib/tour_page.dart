import 'package:flutter/material.dart';

class TourPage extends StatelessWidget {
  final Map<String, String> university;

  const TourPage({super.key, required this.university});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(university['name']!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(university['image']!),
            const SizedBox(height: 16),
            Text(
              university['name']!,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              university['location']!,
              style: const TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            Text(
              university['description']!,
              style: const TextStyle(fontSize: 16),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                // Implement the booking functionality
              },
              child: const Text('Tour campus'),
            ),
          ],
        ),
      ),
    );
  }
}
