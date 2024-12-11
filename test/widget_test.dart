import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// Import the main application file
import 'package:tree_track/main.dart'; // Update this with the actual path to your main.dart file

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester
        .pumpWidget(const TreeTrackApp()); // Use the correct app class name

    // Verify that the counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that the counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
