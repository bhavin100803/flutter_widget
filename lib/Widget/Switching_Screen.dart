import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Color.dart';

class Switching_ScreenWidget extends StatelessWidget {
  const Switching_ScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Classico")),
          backgroundColor: Colors.blue,
        ),
        body:Container(
          color: Colors.blue.shade200,
        )
    );
  }
}
