import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Color.dart';

class CustomWedget extends StatelessWidget {
  const CustomWedget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
          backgroundColor: Constante.my_primary,
        ),
        body:ElevatedButton(
          onPressed: (){

          },
          child: Text('Click'),
        )
    );
  }
}
