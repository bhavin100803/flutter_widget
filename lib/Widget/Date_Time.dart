import 'package:demo2/Color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class Date_TimeWedget extends StatefulWidget {
  const Date_TimeWedget({super.key});

  @override
  State<Date_TimeWedget> createState() => _Date_TimeWedgetState();
}

class _Date_TimeWedgetState extends State<Date_TimeWedget> {
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
          backgroundColor: Constante.my_primary,
        ),
        body: Center(
          child: Container(
            // width: 200,
            // height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Current Time: ${DateFormat('yMMMMEEEEd').format(time)}', style: TextStyle(fontSize:25),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: Text('Current Time'))
              ],
            ),
          ),
        ));
  }
}
