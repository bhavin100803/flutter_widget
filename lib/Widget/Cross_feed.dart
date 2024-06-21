import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cross_feedWidget extends StatefulWidget {
  const Cross_feedWidget({super.key});

  @override
  State<Cross_feedWidget> createState() => _Cross_feedWidgetState();
}

class _Cross_feedWidgetState extends State<Cross_feedWidget> {
  bool isFirst = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void reload() {
    setState(() {
      if (isFirst) {
        isFirst = false;
      } else {
        isFirst = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedCrossFade(
                duration: Duration(seconds: 4),
                firstChild: Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                ),
                secondChild: Image.asset(
                  'assets/photo.jpeg',
                  width: 200,
                  height: 200,
                ),
                firstCurve: Curves.easeInOut,
                secondCurve: Curves.bounceInOut,
                crossFadeState: isFirst
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
              ),
              ElevatedButton(
                  onPressed: () {
                    reload();
                  },
                  child: Text('Show'))
            ],
          ),
        ));
  }
}
