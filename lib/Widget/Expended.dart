import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpendedWedget extends StatelessWidget {
  const ExpendedWedget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
        ),
        body:Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: 100,
                color: Colors.black,
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                height: 100,
                color: Colors.blue,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 100,
                color: Colors.orange,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                  height: 100,
                  color: Colors.green,
                ),
            ),
          ],
        )


    );
  }
}
