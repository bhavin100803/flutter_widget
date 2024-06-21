import 'package:demo2/Color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RangeWidget extends StatefulWidget {


  @override
  State<RangeWidget> createState() => _RangeWidgetState();
}

class _RangeWidgetState extends State<RangeWidget> {
  RangeValues values = RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
        appBar: AppBar(
          title: Text("Range"),
          backgroundColor: Colors.blue,
        ),
        body:Center(
          child: RangeSlider(
            values: values,
            labels: labels,
            activeColor: Colors.green,
            divisions: 20,
            min: 0,
            max: 100,
            onChanged: (newValue){
              values = newValue;
              print('${newValue.start},${newValue.end}');
              setState(() {

              });
            },
          ),
        )
    );
  }
}
