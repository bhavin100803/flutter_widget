import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Columns_RowsWidget extends StatelessWidget {
  const Columns_RowsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
        ),
        body:Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('A',style: TextStyle(fontSize: 40),),
                  Text('B',style: TextStyle(fontSize: 40),),
                  Text('C',style: TextStyle(fontSize: 40),),
                  Text('D',style: TextStyle(fontSize: 40),),
                  Text('E',style: TextStyle(fontSize: 40),),
                ],
              ),
              Text('1',style: TextStyle(fontSize: 40),),
              Text('2',style: TextStyle(fontSize: 40),),
              Text('3',style: TextStyle(fontSize: 40),),
              Text('4',style: TextStyle(fontSize: 40),),
              Text('5',style: TextStyle(fontSize: 40),),
              ElevatedButton(onPressed: (){

              }, child:Text('click'))
            ],
          ),
        )

    );
  }
}
