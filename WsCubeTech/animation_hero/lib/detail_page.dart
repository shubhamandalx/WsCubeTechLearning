import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animate'),
      ),
      body: Center(
        child: Container(
          child: Hero(
              tag: 'background', child: Image.asset('assets/images/girl.png')),
        ),
      ),
    );
  }
}
