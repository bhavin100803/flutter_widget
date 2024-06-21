import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Margin_PaddingWedget extends StatelessWidget {
  const Margin_PaddingWedget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
        ),
        body: Container(
          margin: EdgeInsets.all(50),
          color: Colors.black,
            child:
            Padding(
              padding: EdgeInsets.only(top: 12,left: 34,bottom: 12,right: 34),
              child: Text('bhavin',style: TextStyle(fontSize: 30,color: Colors.white),),
            )),
    );

  }
}
