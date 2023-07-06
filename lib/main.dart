import 'package:flutter/material.dart';
import 'run_rush_home.dart';

void main() {
  runApp(const RunRushApp());

}

class RunRushApp extends StatelessWidget {
  const RunRushApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RunRushApp',
      home: RunRushHome(),
    );
  }
}

