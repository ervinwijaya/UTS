import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  final Function(bool) onToggleTheme;
  final bool isDarkMode;

  const SettingsPage({super.key, required this.onToggleTheme, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Dark Mode', style: TextStyle(fontSize: 18)),
            Switch(
              value: isDarkMode,
              onChanged: (value) {
                onToggleTheme(value);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
