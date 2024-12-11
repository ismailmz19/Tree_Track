import 'package:flutter/material.dart';

class LeaderboardPage extends StatelessWidget {
  const LeaderboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Leaderboard"),
      ),
      body: ListView.builder(
        itemCount: 20, // Number of leaderboard entries
        itemBuilder: (context, index) {
          return ListTile(
            leading:
                Text("#${index + 1}", style: const TextStyle(fontSize: 18)),
            title: Text("User ${index + 1}"),
            trailing: Text("${500 - index * 20} trees"),
          );
        },
      ),
    );
  }
}
