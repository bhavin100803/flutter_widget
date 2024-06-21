import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Color.dart';

class RichWidget extends StatelessWidget {
  const RichWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
          backgroundColor: Constante.my_primary,
        ),
        body:RichText(
          text: TextSpan(
            style: TextStyle(fontSize: 30,color: Colors.orange),
            children: <TextSpan> [
               TextSpan(text: 'Jay'),
              TextSpan(text: 'Mahakal',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.red))
            ]
          ),
        )
    );
  }
}
