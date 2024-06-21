import 'package:demo2/Widget/Switching_Screen.dart';
import 'package:demo2/main.dart';
import 'package:flutter/material.dart';

import 'Color.dart';

class introPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Intro')),
        backgroundColor: Constante.my_primary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Wel come',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 11,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Switching_ScreenWidget(),
                      ));
                },
                child: Text('Next')),
          ],
        ),
      ),
    );
  }
}
