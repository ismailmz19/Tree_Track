import 'package:flutter/material.dart';

class StartActivityPage extends StatelessWidget {
  const StartActivityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Start an Activity"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ListTile(
              title: const Text("Tree Planting"),
              subtitle: const Text(
                  "Organize or participate in a tree planting activity."),
              leading: const Icon(Icons.park),
              onTap: () {
                // Navigate to a tree planting activity page or feature
              },
            ),
            ListTile(
              title: const Text("Clean-Up"),
              subtitle: const Text("Organize or join a community clean-up."),
              leading: const Icon(Icons.cleaning_services),
              onTap: () {
                // Navigate to a clean-up activity page or feature
              },
            ),
          ],
        ),
      ),
    );
  }
}
