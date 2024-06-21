import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
        ),
        body: Center(
          child: Container(
              width: 100,
              height: 100,
              child: Center(child: Image.asset('assets/1.jpeg'))),
        )

    );
  }
}
