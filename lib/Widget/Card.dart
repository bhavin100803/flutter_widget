import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardWedget extends StatelessWidget {
  const CardWedget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
      ),
      body:Center(
        child: Card(
          shadowColor: Colors.red,
            elevation: 15,
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Hello',style: TextStyle(fontSize: 50),),
        )),
      )
    );
  }
}
