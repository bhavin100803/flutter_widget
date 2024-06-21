import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Color.dart';

class Calculater_StatefulWidget extends StatefulWidget {
  const Calculater_StatefulWidget({super.key});

  @override
  State<StatefulWidget> createState() => _StatefulWidgetState();
}

class _StatefulWidgetState extends State<StatefulWidget> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();

  var Result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculater"),
          backgroundColor: Constante.my_primary,
        ),
        body: Container(
          color: Colors.blue.shade300,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no1Controller,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no2Controller,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(21.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(onPressed: () {
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());

                          var sum = no1 + no2;
                          Result = "The Sum of $no1 and $no2 is $sum";
                          setState(() {

                          });
                        }, child: Text('Add')),
                        ElevatedButton(onPressed: () {
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());

                          var sub = no1 - no2;
                          Result = "The sub of $no1 and $no2 is $sub";

                          setState(() {

                          });

                        }, child: Text('Sub')),
                        ElevatedButton(onPressed: () {
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());

                          var mul = no1 * no2;
                          Result = "The Mul of $no1 and $no2 is $mul";

                          setState(() {

                          });
                        }, child: Text('Mul')),
                        ElevatedButton(onPressed: () {
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());

                          var div = no1 / no2;
                          Result = "The Div of $no1 and $no2 is ${div.toStringAsFixed(2)}";

                          setState(() {

                          });
                        }, child: Text('Div'))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(21),
                    child: Text(
                      Result,
                      style: TextStyle(fontSize: 25,color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
