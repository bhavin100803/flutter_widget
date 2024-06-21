import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClippersWidget extends StatelessWidget {
  const ClippersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
          backgroundColor: Colors.blue,
        ),
        body:Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(21),
            child: Image.asset('assets/1.jpeg',width: 400,height: 200,fit: BoxFit.fill,)
          ),
        )
    );
  }
}
