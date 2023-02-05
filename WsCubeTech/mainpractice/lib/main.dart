import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FLutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.blue,
        ),
      ),
    );
  }
}