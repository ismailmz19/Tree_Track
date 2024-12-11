import 'package:flutter/material.dart';

class MyCarbonPage extends StatefulWidget {
  const MyCarbonPage({Key? key}) : super(key: key);

  @override
  State<MyCarbonPage> createState() => _MyCarbonPageState();
}

class _MyCarbonPageState extends State<MyCarbonPage> {
  final _distanceController = TextEditingController();
  double? _result;

  void _calculate() {
    final distance = double.tryParse(_distanceController.text) ?? 0;
    // Mock calculation: carbon offset = distance * 0.5 kg CO2
    setState(() {
      _result = distance * 0.5;
    });
  }

  @override
  void dispose() {
    _distanceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Carbon')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
                'Calculate your approximate carbon footprint from travel.'),
            TextField(
              controller: _distanceController,
              decoration:
                  const InputDecoration(labelText: 'Distance traveled (km)'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: _calculate, child: const Text('Calculate')),
            if (_result != null) ...[
              const SizedBox(height: 20),
              Text('Estimated Carbon: $_result kg CO2'),
            ]
          ],
        ),
      ),
    );
  }
}
