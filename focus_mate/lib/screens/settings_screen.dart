import 'package:flutter/material.dart';
import '../utils/constants.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: AppColors.primary,
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text('Enable Notifications'),
            value: true,
            onChanged: (value) {
              // Add logic to handle notification toggle
            },
          ),
          ListTile(
            title: const Text('Account'),
            subtitle: const Text('Manage your account'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate or show dialog
            },
          ),
          ListTile(
            title: const Text('Privacy Policy'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Open privacy policy
            },
          ),
        ],
      ),
    );
  }
}
