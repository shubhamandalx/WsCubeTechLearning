import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool flag = true;

  @override
  /*void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      reload();
    });
  }*/

  void reload() {
    setState(() {
      if (flag) {
        flag = false;
      } else {
        flag = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedCrossFade(
                  duration: const Duration(seconds: 1),
                  firstChild:
                      Container(width: 100, height: 100, color: Colors.grey),
                  secondChild: Image.asset('assets/images/girl.png',
                      width: 200, height: 200),
                  crossFadeState: flag
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond),
              ElevatedButton(
                  onPressed: () {
                    reload();
                  },
                  child: const Text('Animate'))
            ],
          ),
        ));
  }
}
