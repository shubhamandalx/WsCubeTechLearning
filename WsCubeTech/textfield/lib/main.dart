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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'TextField'),
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
  var emailText = TextEditingController();
  var passText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Center(
            child: Container(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      //keyboardType: TextInputType.url,
                      controller: emailText,
                      decoration: InputDecoration(
                          hintText: 'Enter Email',
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: const BorderSide(
                                  color: Colors.green, width: 2)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: const BorderSide(color: Colors.grey)),
                          //suffixText: "Username Exists",
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.remove_red_eye),
                            onPressed: () {},
                          ),
                          prefixIcon: const Icon(
                            Icons.email,
                            color: Colors.orange,
                          )),
                    ),
                    Container(
                      height: 11,
                    ),
                    TextField(
                      controller: passText,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Enter Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide:
                                  const BorderSide(color: Colors.green))),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          String uEmail = emailText.text;
                          String uPass = passText.text;

                          print("Email: $uEmail, Pass: $uPass");
                        },
                        child: const Text('Login'))
                  ],
                ))));
  }
}
