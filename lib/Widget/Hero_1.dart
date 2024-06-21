import 'package:demo2/Detailpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hero_1 extends StatelessWidget {
  const Hero_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailpageWidget(),
                    ));
              },
              child: Hero(
                tag: 'background',
                child: Image.asset(
                  'assets/1.jpeg',
                  width: 150,
                  height: 100,
                ),
              ),
            ),
          ),
        ));
  }
}
