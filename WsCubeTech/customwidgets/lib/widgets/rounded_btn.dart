import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {super.key,
      required this.btnName,
      this.icon,
      this.bgcolor,
      this.textStyle,
      this.callBack});

  final String btnName;
  final Icon? icon;
  final Color? bgcolor;
  final TextStyle? textStyle;
  final VoidCallback? callBack;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {
      callBack!();
    }, child: Row());
  }
}
