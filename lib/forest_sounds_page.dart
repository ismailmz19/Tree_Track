import 'package:flutter/material.dart';

class ForestSoundsPage extends StatelessWidget {
  const ForestSoundsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forest Sounds"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text("Bird Chirping"),
            leading: const Icon(Icons.music_note),
            onTap: () {
              // Play sound logic
            },
          ),
          ListTile(
            title: const Text("Wind through Trees"),
            leading: const Icon(Icons.music_note),
            onTap: () {
              // Play sound logic
            },
          ),
        ],
      ),
    );
  }
}
