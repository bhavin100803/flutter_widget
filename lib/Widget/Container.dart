import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
      ),
      body: Center(
        child:Container(
          width: 100,
          height: 100,
          color: Colors.yellow,
          child: Text('hello'),
          // color: Colors.yellow,
        ), 
      )

    );
  }
}
