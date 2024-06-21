import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InkwellWedget extends StatelessWidget {
  const InkwellWedget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
        ),
        body: Center(
            child: InkWell(
          onTap: () {
            print('Tapped on container');
          },
          onLongPress: () {
            print('Longpress on container');
          },
          onDoubleTap: () {
            print('Doublepress on container');
          },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.red,
            child: Center(
                child: InkWell(
                    onTap: () {
                      print('Text Widget tapped');
                    },
                    child: Text(
                      'Click me',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ))),
          ),
        )));
  }
}
