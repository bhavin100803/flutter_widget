import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Decoration_containerWedget extends StatelessWidget {
  const Decoration_containerWedget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                  border: Border.all(
                  width: 5,
                    color: Colors.black
              ),
                boxShadow:[
                  BoxShadow(
                    blurRadius: 11,
                    color: Colors.grey,
                    spreadRadius: 21,
                  )
                ],
                shape: BoxShape.circle


              ),
            ),
          ),
        )

    );
  }
}
