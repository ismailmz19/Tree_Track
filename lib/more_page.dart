import 'package:flutter/material.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

  final List<String> moreFeatures = const [
    'App Settings',
    'User Profile',
    'Support & FAQ',
    'About Us',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('More')),
      body: ListView.builder(
        itemCount: moreFeatures.length + 1, // Add one for the logout option
        itemBuilder: (context, i) {
          if (i == moreFeatures.length) {
            // Add Logout option as the last item
            return ListTile(
              title: const Text(
                'Log Out',
                style: TextStyle(color: Colors.red),
              ),
              leading: const Icon(Icons.logout, color: Colors.red),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
            );
          }
          return ListTile(
            title: Text(moreFeatures[i]),
          );
        },
      ),
    );
  }
}
