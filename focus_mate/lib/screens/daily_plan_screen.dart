import 'package:flutter/material.dart';

class DailyPlanScreen extends StatefulWidget {
  const DailyPlanScreen({super.key});

  @override
  State<DailyPlanScreen> createState() => _DailyPlanScreenState();
}

class _DailyPlanScreenState extends State<DailyPlanScreen> {
  List<Map<String, dynamic>> tasks = [
    {"title": "Morning exercise", "done": false},
    {"title": "Read 10 pages", "done": false},
    {"title": "Work on project", "done": false},
    {"title": "Reflect and plan tomorrow", "done": false},
  ];

  void toggleTask(int index) {
    setState(() {
      tasks[index]["done"] = !tasks[index]["done"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Daily Plan")),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index];
          return CheckboxListTile(
            value: task["done"],
            title: Text(task["title"]),
            onChanged: (value) => toggleTask(index),
          );
        },
      ),
    );
  }
}
