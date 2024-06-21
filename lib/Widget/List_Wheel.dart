import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class List_WheelWidget extends StatefulWidget {
  const List_WheelWidget({super.key});

  @override
  State<List_WheelWidget> createState() => _List_WheelWidgetState();
}

class _List_WheelWidgetState extends State<List_WheelWidget> {

  var arrIndex = [
    1,2,3,4,5,6,7,8,9,10,11
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("3D list"),
          backgroundColor: Colors.blue,
        ),
        body:Center(
          child: ListWheelScrollView(
            itemExtent: 200,
            children: arrIndex.map((Value) =>  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Center(child: Text('$Value',style: TextStyle(fontSize: 21,color: Colors.white),)),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(21)
                ),
                width: double.infinity,
              ),
            )).toList(),

          ),
        )
    );
  }
}
