import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Color.dart';

class Call_Back extends StatelessWidget {
  const Call_Back({super.key});

  callBack(){
    print('Clicked!!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
          backgroundColor: Constante.my_primary,
        ),
        body:ElevatedButton(
          child: Text('Click Me'),
          onPressed: callBack,
        )
    );
  }
}
