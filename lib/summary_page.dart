import 'package:flutter/material.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Summary'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Summary of your tour to ITI',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            const Text(
              'Do you want to purchase meals?',
              style: TextStyle(fontSize: 16),
            ),
            Checkbox(value: false, onChanged: (bool? value) {}),
            const SizedBox(height: 10),
            const Text(
              'Do you have allergies?',
              style: TextStyle(fontSize: 16),
            ),
            Checkbox(value: false, onChanged: (bool? value) {}),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Handle booking confirmation
              },
              child: const Text('Confirm Booking'),
            ),
          ],
        ),
      ),
    );
  }
}
