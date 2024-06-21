import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
        ),
        body: Text("Mahadev",style: TextStyle(
          fontSize: 50,
          color: Colors.red,
          fontWeight: FontWeight.bold,
            backgroundColor: Colors.black
        ),)

    );
  }
}
