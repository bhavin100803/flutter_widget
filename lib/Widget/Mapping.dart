import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Color.dart';

class MappingWidget extends StatelessWidget {


  var arrData = [
    {'name': 'Bhavin',
    'mobno':2321451769,
    'unread': '2'},
    {'name': 'Jaydip',
      'mobno':4571251769,
      'unread': '5'},
    {'name': 'Kashyap',
      'mobno':9541451769,
      'unread': '3'},
    {'name': 'Jeet',
      'mobno':1361451769,
      'unread': '6'},
    {'name': 'Raj',
      'mobno':6571451769,
      'unread': '8'},
    {'name': 'Drashti',
      'mobno':2451451769,
      'unread': '4'},
    {'name': 'Trushal',
      'mobno':1241451769,
      'unread': '3'},
    {'name': 'Mahavir',
      'mobno':9841451769,
      'unread': '1'},
    {'name': 'Ramesh',
      'mobno':3451451769,
      'unread': '5'},


  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("Mapping"),
          backgroundColor: Constante.my_primary,
        ),
        body:Container(
          child: ListView(
            children:arrData.map((Value) =>
                ListTile(
                  leading: Icon(Icons.account_circle,size: 50,),
                  title: Text(Value['name'].toString()),
                  subtitle: Text(Value['mobno'].toString()),
                  trailing: CircleAvatar(
                      radius: 13,
                      backgroundColor: Colors.green,
                      child: Text(Value['unread'].toString(),style: TextStyle(color: Colors.white ),)),
                )
            ).toList()
          ),
        )
    );
  }
}
