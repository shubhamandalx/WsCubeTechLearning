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
      debugShowCheckedModeBanner: false,
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
  var no1controller = TextEditingController();
  var no2controller = TextEditingController();
  var result = "";

  @override
  Widget build(BuildContext context) {
    //var count =0;

    return Scaffold(
        appBar: AppBar(
          title: const Text("Hello"),
        ),
        body: Container(
          color: Colors.blueGrey,
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.number,
                controller: no1controller,
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: no2controller,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          var no1 = int.parse(no1controller.text.toString());
                          var no2 = int.parse(no2controller.text.toString());
                          var sum = no1 + no2;

                          result = 'The Sum of $no1 and $no2 is $sum';
                          setState(() {
                            
                          });
                        },
                        child: const Text('Add')),
                    ElevatedButton(
                        onPressed: () {
                          var no1 = int.parse(no1controller.text.toString());
                          var no2 = int.parse(no2controller.text.toString());
                          var diff = no1 - no2;

                          result = 'The difference of $no1 and $no2 is $diff';
                          print(result);
                          setState(() {
                            
                          });
                        },
                        child: const Text('Sub')),
                    ElevatedButton(
                        onPressed: () {
                          var no1 = int.parse(no1controller.text.toString());
                          var no2 = int.parse(no2controller.text.toString());
                          var mul = no1 * no2;

                          result =
                              'The multiplication of $no1 and $no2 is $mul';
                              setState(() {
                                
                              });
                        },
                        child: const Text('Mul')),
                    ElevatedButton(
                        onPressed: () {
                          var no1 = int.parse(no1controller.text.toString());
                          var no2 = int.parse(no2controller.text.toString());
                          var div = no1 / no2;

                          result = 'The Division of $no1 and $no2 is $div';
                          setState(() {
                            
                          });
                        },
                        child: const Text('Div'))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(result, style: const TextStyle(fontSize: 36, fontWeight: FontWeight.w500),)
              )
            ],
          )),
        ));
  }
}
