import 'package:flutter/material.dart';

class GiveTreesPage extends StatefulWidget {
  const GiveTreesPage({Key? key}) : super(key: key);

  @override
  State<GiveTreesPage> createState() => _GiveTreesPageState();
}

class _GiveTreesPageState extends State<GiveTreesPage> {
  final _quantityController = TextEditingController();

  void _donate() {
    if (_quantityController.text.isNotEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Donated ${_quantityController.text} trees!')));
      _quantityController.clear();
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Enter a tree quantity')));
    }
  }

  @override
  void dispose() {
    _quantityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Give Trees')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text('Contribute to planting new trees.'),
            TextField(
              controller: _quantityController,
              decoration: const InputDecoration(labelText: 'Number of trees'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: _donate, child: const Text('Donate')),
          ],
        ),
      ),
    );
  }
}
