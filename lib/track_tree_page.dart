import 'package:flutter/material.dart';

class TrackTreePage extends StatelessWidget {
  const TrackTreePage({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> plantedTrees = const [
    {'species': 'Maple', 'location': '45.4215° N, 75.6972° W'},
    {'species': 'Birch', 'location': '40.7128° N, 74.0060° W'},
  ];

  @override
  Widget build(BuildContext context) {
    // In a real app, use Google Maps widget (google_maps_flutter package).
    return Scaffold(
      appBar: AppBar(title: const Text('Track Your Trees')),
      body: Column(
        children: [
          const SizedBox(
            height: 200,
            child: Center(
                child: Text('Map Placeholder',
                    style: TextStyle(color: Colors.grey))),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: plantedTrees.length,
              itemBuilder: (context, i) {
                return ListTile(
                  title: Text(plantedTrees[i]['species']),
                  subtitle: Text('Location: ${plantedTrees[i]['location']}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
