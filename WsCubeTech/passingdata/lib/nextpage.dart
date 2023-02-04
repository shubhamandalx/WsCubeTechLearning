import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  IntroPage(this.nameFromHome);

  var nameFromHome;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Welcome $nameFromHome', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w600),)],
        ),
      ),
    );
  }
}
