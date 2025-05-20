import 'package:flutter/material.dart';
import '../widgets/progress_card.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Your Progress")),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            ProgressCard(
              title: "Tasks Completed",
              subtitle: "18",
              progress: 0.8,
            ),
            SizedBox(height: 16),
            ProgressCard(
              title: "Streak",
              subtitle: "5 Days",
              progress: 0.5,
            ),
            SizedBox(height: 16),
            ProgressCard(
              title: "Affirmations Read",
              subtitle: "27",
              progress: 0.9,
            ),
          ],
        ),
      ),
    );
  }
}
