import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SALT',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(title: 'App'),
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
  var count = 0;
  @override
  Widget build(BuildContext context) {
    //var count =0;

    return Scaffold(
        appBar: AppBar(
          title: const Text("Hello"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Count: $count',
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              ElevatedButton(
                  onPressed: () {
                    count = count + 1;
                    //print('$count');

                    setState(() {});
                  },
                  child: const Text(
                    'Button',
                    style: TextStyle(
                        fontSize: 24, fontWeight: FontWeight.w500),
                  ))
            ],
          ),
        ));
  }
}
