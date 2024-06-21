import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleavaterWedget extends StatelessWidget {
  const CircleavaterWedget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
      ),
      body:Center(
             child: CircleAvatar(
                backgroundImage: AssetImage('assets/photo.jpeg'),
               radius: 150,

          ),


    ),
    );
  }
}
