import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bmi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();

  var result = '';
  var bgcolor = Colors.indigo.shade50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI Calculator'),
        ),
        body: Container(
          color: bgcolor,
          child: Center(
            child: SizedBox(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'BMI',
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
                  ),
                  TextField(
                    controller: wtController,
                    decoration: const InputDecoration(
                      label: Text('Enter Your Weight in KG'),
                      prefixIcon: Icon(Icons.line_weight),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  TextField(
                    controller: ftController,
                    decoration: const InputDecoration(
                        label: Text("Your Height in ft"),
                        prefixIcon: Icon(Icons.height)),
                    keyboardType: TextInputType.number,
                  ),
                  TextField(
                    controller: inController,
                    decoration: const InputDecoration(
                        label: Text('Enter your height in inches'),
                        prefixIcon: Icon(Icons.height_rounded)),
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        var wt = wtController.text.toString();
                        var ft = ftController.text.toString();
                        var inch = inController.text.toString();

                        if (wt != '' && ft != '' && inch != '') {
                          var iWt = int.parse(wt);
                          var iFt = int.parse(ft);
                          var iInch = int.parse(inch);

                          var tInch = (iFt * 12) + iInch;
                          var tCm = tInch * 2.54;
                          var tM = tCm / 100;

                          var bmi = iWt / (tM * tM);

                          var msg = '';

                          if (bmi > 25) {
                            msg = 'You are Overweight';
                            bgcolor = Colors.orange.shade50;
                          } else if (bmi < 18) {
                            msg = 'You are Underweight';
                            bgcolor = Colors.red.shade50;
                          } else {
                            msg = 'You are Healthy';
                            bgcolor = Colors.green.shade100;
                          }

                          result =
                              '$msg \n Your BMI is : ${bmi.toStringAsFixed(2)}';
                          setState(() {});
                        } else {
                          setState(() {
                            result = 'Please fill all the required blanks';
                          });
                        }
                      },
                      child: const Text(
                        'Calculate',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(result,
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ),
        ));
  }
}
