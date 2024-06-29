import 'package:flutter/material.dart';

class CustomFormAuth extends StatelessWidget {
  final bool obscuretext;
  final String hinttext;
  final String labeltext;
  final IconData icondata;
  final TextEditingController? mycontroller;

  CustomFormAuth({
    required this.obscuretext,
    required this.hinttext,
    required this.labeltext,
    required this.icondata,
     this.mycontroller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        controller: mycontroller,
        obscureText: obscuretext,
        style: TextStyle(color: Colors.white), // White text
        decoration: InputDecoration(
          hintText: hinttext,
          labelText: labeltext,
          hintStyle: TextStyle(color: Colors.white), // White hint text
          labelStyle: TextStyle(color: Colors.white), // White label text
          prefixIcon: Icon(icondata, color: Colors.white), // White icon
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white), // White border
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white), // White border when focused
          ),
        ),
      ),
    );
  }
}
