import 'package:flutter/material.dart';

class TreeFactsPage extends StatelessWidget {
  const TreeFactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tree Facts"),
      ),
      body: ListView.builder(
        itemCount: 10, // Number of tree facts
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Fact ${index + 1}"),
            subtitle: Text("Description of tree fact ${index + 1}..."),
          );
        },
      ),
    );
  }
}
