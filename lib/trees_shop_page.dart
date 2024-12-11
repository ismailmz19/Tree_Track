import 'package:flutter/material.dart';

class TreesShopPage extends StatelessWidget {
  const TreesShopPage({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> treesForSale = const [
    {'species': 'Cherry Blossom', 'price': 20},
    {'species': 'Bonsai', 'price': 50},
    {'species': 'Lemon Tree', 'price': 25},
  ];

  void _buy(BuildContext context, String species) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Bought a $species!')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Trees Shop')),
      body: ListView.builder(
        itemCount: treesForSale.length,
        itemBuilder: (context, i) {
          return ListTile(
            title: Text('${treesForSale[i]['species']}'),
            subtitle: Text('Price: \$${treesForSale[i]['price']}'),
            trailing: ElevatedButton(
              onPressed: () => _buy(context, treesForSale[i]['species']),
              child: const Text('Buy'),
            ),
          );
        },
      ),
    );
  }
}
