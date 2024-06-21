import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomfontWedget extends StatelessWidget {
  const CustomfontWedget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
        ),
        body: Center(
            child: Text(
          'Bhavin,Jaydip,kano',
          style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              fontFamily: 'FontMain'),
        )));
  }
}
