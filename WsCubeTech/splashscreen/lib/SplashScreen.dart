import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splashscreen/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => const MyHomePage(title: 'Hello')));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        width: double.infinity,
        height: double.infinity,
        child: const Center(
          child: Text(
            "Burnol",
            style: TextStyle(
                fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
