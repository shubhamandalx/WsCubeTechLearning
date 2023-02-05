import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Date Picker'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
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
              const Text(
                'Select Date',
                style: TextStyle(fontSize: 25),
              ),
              ElevatedButton(
                  onPressed: () async {
                    DateTime? datePicked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2021),
                        lastDate: DateTime(2027));

                    if (datePicked != null) {
                      print(
                          'Date Selected: ${datePicked.day}:${datePicked.month}:${datePicked.year}');
                    }
                  },
                  child: const Text('Show')),
              Container(
                height: 5,
              ),
              ElevatedButton(
                  onPressed: () async {
                    TimeOfDay? pickedTime = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                        initialEntryMode: TimePickerEntryMode.dial);

                    if (pickedTime != null) {
                      print("Time: ${pickedTime.hour}:${pickedTime.minute}");
                    }
                  },
                  child: const Text('Select Time'))
            ],
          ),
        ));
  }
}
