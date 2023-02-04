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
  var arrIndex = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  @override
  Widget build(BuildContext context) {
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListWheelScrollView(
            itemExtent: 100,
            children: arrIndex
                .map((value) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(21)),
                        width: double.infinity,
                        // height: double.infinity,
                      ),
                    ))
                .toList()

            /*[Container(
          width: 100,
          color: Colors.blue,
        ),
        Container(
          width: 100,
          color: Colors.blue,
        ),
        Container(
          width: 100,
          color: Colors.blue,
        ),
        Container(
          width: 100,
          color: Colors.blue,
        ),
        Container(
          width: 100,
          color: Colors.blue,
        ),
        Container(
          width: 100,
          color: Colors.blue,
        ),
        Container(
          width: 100,
          color: Colors.blue,
        ),
        Container(
          width: 100,
          color: Colors.blue,
        ),
        Container(
          width: 100,
          color: Colors.blue,
        ),]*/

            ));
  }
}
