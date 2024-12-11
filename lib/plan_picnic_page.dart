import 'package:flutter/material.dart';

class PlanPicnicPage extends StatefulWidget {
  const PlanPicnicPage({Key? key}) : super(key: key);

  @override
  State<PlanPicnicPage> createState() => _PlanPicnicPageState();
}

class _PlanPicnicPageState extends State<PlanPicnicPage> {
  final _locationController = TextEditingController();
  DateTime? _date;

  Future<void> _pickDate() async {
    final date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (date != null) setState(() => _date = date);
  }

  void _savePicnic() {
    if (_locationController.text.isNotEmpty && _date != null) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Picnic planned at ${_locationController.text}!')));
      Navigator.pop(context);
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Complete all fields')));
    }
  }

  @override
  void dispose() {
    _locationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Plan a Picnic')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
                controller: _locationController,
                decoration: const InputDecoration(labelText: 'Location')),
            const SizedBox(height: 20),
            Row(
              children: [
                ElevatedButton(
                    onPressed: _pickDate, child: const Text('Select Date')),
                const SizedBox(width: 20),
                Text(_date != null
                    ? '${_date!.toLocal()}'.split(' ')[0]
                    : 'No date selected')
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: _savePicnic, child: const Text('Save Picnic')),
          ],
        ),
      ),
    );
  }
}
