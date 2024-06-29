import 'package:flutter/material.dart';

import '../../core/constant/color.dart';

class CustomBottonAuth extends StatelessWidget {
  final String textbutton;
  final void Function() onTap;

  CustomBottonAuth({super.key, required this.textbutton, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        onPressed: onTap,
        child: Text(textbutton),
      ),
    );
  }
}
