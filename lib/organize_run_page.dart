import 'package:flutter/material.dart';

class OrganizeRunPage extends StatefulWidget {
  const OrganizeRunPage({Key? key}) : super(key: key);

  @override
  State<OrganizeRunPage> createState() => _OrganizeRunPageState();
}

class _OrganizeRunPageState extends State<OrganizeRunPage> {
  final _eventNameController = TextEditingController();
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

  Future<void> _pickDate() async {
    final date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (date != null) setState(() => _selectedDate = date);
  }

  Future<void> _pickTime() async {
    final time = await showTimePicker(
      context: context,
      initialTime: const TimeOfDay(hour: 9, minute: 0),
    );
    if (time != null) setState(() => _selectedTime = time);
  }

  void _saveEvent() {
    if (_eventNameController.text.isNotEmpty &&
        _selectedDate != null &&
        _selectedTime != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Event "${_eventNameController.text}" saved!')),
      );
      Navigator.pop(context);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Complete all fields')),
      );
    }
  }

  @override
  void dispose() {
    _eventNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Organize a Run')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _eventNameController,
              decoration: const InputDecoration(labelText: 'Event Name'),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                ElevatedButton(
                    onPressed: _pickDate, child: const Text('Select Date')),
                const SizedBox(width: 20),
                Text(_selectedDate != null
                    ? '${_selectedDate!.toLocal()}'.split(' ')[0]
                    : 'No date selected')
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                ElevatedButton(
                    onPressed: _pickTime, child: const Text('Select Time')),
                const SizedBox(width: 20),
                Text(_selectedTime != null
                    ? '${_selectedTime!.hour}:${_selectedTime!.minute.toString().padLeft(2, "0")}'
                    : 'No time selected'),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: _saveEvent, child: const Text('Save Event')),
          ],
        ),
      ),
    );
  }
}
