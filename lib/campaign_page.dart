import 'package:flutter/material.dart';

class CampaignPage extends StatelessWidget {
  const CampaignPage({Key? key}) : super(key: key);

  Future<List<Map<String, dynamic>>> fetchCampaigns() async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      {'name': 'Amazon Rainforest Restoration', 'treesPlanted': 15000},
      {'name': 'Local Community Park Greening', 'treesPlanted': 500},
      {'name': 'Schoolyard Arbor Project', 'treesPlanted': 300},
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Campaigns'),
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: fetchCampaigns(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          final campaigns = snapshot.data!;
          return ListView.builder(
            itemCount: campaigns.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(campaigns[index]['name']),
                subtitle:
                    Text('Trees Planted: ${campaigns[index]['treesPlanted']}'),
              );
            },
          );
        },
      ),
    );
  }
}
