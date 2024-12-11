import 'package:flutter/material.dart';

class EcoBlogPage extends StatelessWidget {
  const EcoBlogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Eco Blog"),
      ),
      body: ListView.builder(
        itemCount: 10, // Number of blog posts
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Blog Post ${index + 1}"),
            subtitle: Text("Summary of blog post ${index + 1}..."),
            onTap: () {
              // Add navigation or action when tapping on a blog post
            },
          );
        },
      ),
    );
  }
}
