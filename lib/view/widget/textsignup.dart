import 'package:flutter/material.dart';

class TextSignUp extends StatelessWidget {
  final String textone;
  final String texttwo;
  final Function()? onTap;
  final Color? textoneColor;
  final Color? texttwoColor;

  TextSignUp({
    required this.textone,
    required this.texttwo,
    required this.onTap,
    this.textoneColor,
    this.texttwoColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textone,
          style: TextStyle(color: textoneColor ?? Colors.black),
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            texttwo,
            style: TextStyle(color: texttwoColor ?? Colors.red),
          ),
        ),
      ],
    );
  }
}
