import 'package:flutter/material.dart';
import 'campaign_page.dart';
import 'eco_blog_page.dart';
import 'forest_sounds_page.dart';
import 'give_trees_page.dart';
import 'home_page.dart';
import 'leaderboard_page.dart';
import 'login_page.dart';
import 'more_page.dart';
import 'my_carbon_page.dart';
import 'own_tree_page.dart';
import 'report_issue_page.dart';
import 'signup_page.dart';
import 'start_activity_page.dart';
import 'track_tree_page.dart';
import 'tree_facts_page.dart';
import 'trees_shop_page.dart';

void main() {
  runApp(const TreeTrackApp());
}

class TreeTrackApp extends StatelessWidget {
  const TreeTrackApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tree Track',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: const Color(0xFFF7FAF5),
      ),
      debugShowCheckedModeBanner: false, // Removes the debug banner
      initialRoute: '/login', // Set the initial route
      routes: {
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/signup': (context) => const SignUpPage(),
        '/campaign': (context) => const CampaignPage(),
        '/eco_blog': (context) => const EcoBlogPage(),
        '/forest_sounds': (context) => const ForestSoundsPage(),
        '/give_trees': (context) => const GiveTreesPage(),
        '/leaderboard': (context) => const LeaderboardPage(),
        '/more': (context) => const MorePage(),
        '/my_carbon': (context) => const MyCarbonPage(),
        '/own_tree': (context) => const OwnTreePage(),
        '/report_issue': (context) => const ReportIssuePage(),
        '/start_activity': (context) => const StartActivityPage(),
        '/track_tree': (context) => const TrackTreePage(),
        '/tree_facts': (context) => const TreeFactsPage(),
        '/trees_shop': (context) => const TreesShopPage(),
      },
    );
  }
}
