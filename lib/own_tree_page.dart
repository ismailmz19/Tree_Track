import 'package:flutter/material.dart';

class OwnTreePage extends StatelessWidget {
  const OwnTreePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Owned Trees"),
      ),
      body: ListView.builder(
        itemCount: 10, // Number of trees owned
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Tree ${index + 1}"),
            subtitle:
                Text("Age: ${index + 1} years - Location: Forest ${index + 1}"),
          );
        },
      ),
    );
  }
}
