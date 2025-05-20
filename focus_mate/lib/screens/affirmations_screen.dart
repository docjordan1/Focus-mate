import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class AffirmationsScreen extends StatefulWidget {
  const AffirmationsScreen({super.key});

  @override
  State<AffirmationsScreen> createState() => _AffirmationsScreenState();
}

class _AffirmationsScreenState extends State<AffirmationsScreen> {
  List<String> _affirmations = [];
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _loadAffirmations();
  }

  Future<void> _loadAffirmations() async {
    final String jsonString =
        await rootBundle.loadString('assets/affirmations/daily_affirmations.json');
    final List<dynamic> data = json.decode(jsonString);
    setState(() {
      _affirmations = List<String>.from(data);
    });
  }

  void _showNextAffirmation() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _affirmations.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    final String currentAffirmation =
        _affirmations.isNotEmpty ? _affirmations[_currentIndex] : "Loading...";

    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Affirmation'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                currentAffirmation,
                style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: _showNextAffirmation,
                child: const Text('Next Affirmation'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
