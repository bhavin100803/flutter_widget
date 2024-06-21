import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Color.dart';

class ConstraintWidget extends StatelessWidget {
  const ConstraintWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
          backgroundColor: Constante.my_primary,
        ),
        body:ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 300,
              minWidth: 200,
              maxHeight:300,
              minHeight: 100

            ),
            child: ElevatedButton(style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue
            ),
                onPressed: (){

                },child: Text('Click',style: TextStyle(color: Colors.white),),
    )
        )
    );
  }
}
