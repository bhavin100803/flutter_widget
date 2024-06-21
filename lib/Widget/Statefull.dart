import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Color.dart';

class StatefullWidget extends StatefulWidget {
  const StatefullWidget({super.key});

  @override
  State<StatefullWidget> createState() => _StatefullWidgetState();
}

class _StatefullWidgetState extends State<StatefullWidget> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
          backgroundColor: Constante.my_primary,
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('count: $count',style: TextStyle(fontSize: 30),),
              ElevatedButton(onPressed: (){

                setState(() {
                  count++;
                  print(count);
                });
              },
                  child: Text('Incriment count'))
            ],
          ),
        )
    );
  }
}
