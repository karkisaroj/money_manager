import 'package:flutter/material.dart';

class ConfigurationScreen extends StatelessWidget {
  const ConfigurationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        children: [
          const SizedBox(height: 16),
          ListTile(
            leading: Icon(Icons.person_outline),
            title: Text('Profile'),
            subtitle: Text('Edit your profile'),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.lock_outline),
            title: Text('Privacy & Security'),
            subtitle: Text('Manage privacy settings'),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.notifications_none),
            title: Text('Notifications'),
            subtitle: Text('Notification preferences'),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.palette_outlined),
            title: Text('Appearance'),
            subtitle: Text('Theme and display'),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Language'),
            subtitle: Text('App language'),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('About'),
            subtitle: Text('App version, licenses'),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {},
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
