import 'package:flutter/material.dart';

class LeaderboardPage extends StatelessWidget {
  const LeaderboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> moroccanNames = [
      "User1",
      "Fatima",
      "Hassan",
      "Khadija",
      "Youssef",
      "Amina",
      "Rachid",
      "Latifa",
      "Karim",
      "Leila",
      "Samir",
      "Nadia",
      "Ahmed",
      "Soukaina",
      "Mourad",
      "Sanae",
      "Omar",
      "Salma",
      "Ilyas",
      "Zineb",
    ]; // Matches 20 entries

    return Scaffold(
      appBar: AppBar(
        title: const Text("Leaderboard"),
        backgroundColor: Colors.green.shade700,
      ),
      body: ListView.builder(
        itemCount: moroccanNames.length, // Ensure it matches the list size
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text(
              "#${index + 1}",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            title: Text(
              moroccanNames[index],
              style: const TextStyle(fontSize: 16),
            ),
            trailing: Text(
              "${500 - index * 20} trees",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          );
        },
      ),
    );
  }
}
