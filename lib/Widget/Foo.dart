import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Foowidget extends StatefulWidget {
  @override
  State<Foowidget> createState() => _FoowidgetState();
}

class _FoowidgetState extends State<Foowidget> {
  var _width = 200.0;

  var _height = 100.0;

  bool flag = true;

  Color bgcolor = Colors.blueGrey;
  Color bgcolor2 = Colors.blueGrey;

  Decoration myDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color: Colors.blueGrey
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
        backgroundColor: bgcolor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _width,
              height: _height,
              curve: Curves.bounceInOut,
              // color: bgcolor2,
              decoration: myDecor,
              duration: Duration(seconds: 2),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (flag) {
                      _width = 100.0;
                      _height = 200.0;
                      myDecor = BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                        color: Colors.orange
                      );
                      flag = false;
                    } else {
                      _width = 200.0;
                      _height = 100.0;
                      myDecor = BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Colors.blueGrey
                      );
                      flag = true;
                    }
                  });
                },
                child: Text('Animate'))
          ],
        ),
      ),
    );
  }
}
