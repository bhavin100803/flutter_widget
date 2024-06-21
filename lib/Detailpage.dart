import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailpageWidget extends StatelessWidget {
  const DetailpageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Detail"),
          backgroundColor: Colors.blue,
        ),
        body:Container(
          child: Hero(
            tag: 'background',
            child: Image.asset('assets/1.jpeg'),
          ),
        )
    );
  }
}
