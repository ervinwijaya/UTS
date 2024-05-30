import 'package:flutter/material.dart';
import 'profile_page.dart';
import 'settings_page.dart';
import 'explore_page.dart';

class HomePage extends StatelessWidget {
  final Function(bool) onToggleTheme;
  final bool isDarkMode;

  const HomePage({super.key, required this.onToggleTheme, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
        automaticallyImplyLeading: false, // To hide the default back button
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildMenuButton(context, 'Explore', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ExplorePage()),
              );
            }),
            _buildMenuButton(context, 'Profile', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            }),
            _buildMenuButton(context, 'Settings', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsPage(
                    onToggleTheme: onToggleTheme,
                    isDarkMode: isDarkMode,
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuButton(BuildContext context, String title, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          textStyle: const TextStyle(fontSize: 24),
        ),
        onPressed: onPressed,
        child: Text(title),
      ),
    );
  }
}
