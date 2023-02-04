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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
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
  var _width = 200.0;
  var _height = 100.0;
  bool flag = true;
  //var bgColor = Colors.blueAccent;

  Decoration myDecor =
      BoxDecoration(borderRadius: BorderRadius.circular(2), color: Colors.red);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                height: _height,
                width: _width,
                decoration: myDecor,
                curve: Curves.bounceOut,
                duration: const Duration(seconds: 1),
              ),
              const SizedBox(
                height: 11,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (flag) {
                        _width = 100.0;
                        _height = 200.0;
                        flag = false;
                        myDecor = BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.orange);
                      } else {
                        _width = 200.0;
                        _height = 100.0;
                        flag = true;
                        myDecor = BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Colors.yellow);
                      }
                    });
                  },
                  child: const Text('Animate'))
            ],
          ),
        ));
  }
}
