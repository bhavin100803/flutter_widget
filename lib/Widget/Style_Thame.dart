import 'package:demo2/Ui_helper/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


import '../Color.dart';

class Style_ThameWedget extends StatelessWidget {
  const Style_ThameWedget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constante.my_primary,
        title: Text("Demo"),
      ),
      body:Column(
        children: [
          Text('bhavin',style: Theme.of(context).textTheme.displayLarge,),
          Text('jaydip',style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.lightBlueAccent),),
          Text('raj',style: mTextStyle20(),),
          Text('kano',style:mTextStyle11(textColor: Colors.blue),),
        ],
      )


    );
  }
}
