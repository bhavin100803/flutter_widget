import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Color.dart';

class AwesomeWidget extends StatelessWidget {
  const AwesomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
          backgroundColor: Constante.my_primary,
        ),
        body:Text('HEllo')
    );
  }
}
