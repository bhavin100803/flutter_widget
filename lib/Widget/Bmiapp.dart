import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Color.dart';

class BmiappWidget extends StatefulWidget {




  @override
  State<BmiappWidget> createState() => _BmiappWidgetState();
}

class _BmiappWidgetState extends State<BmiappWidget> {
  var wtController = TextEditingController();

  var ftController = TextEditingController();

  var inchController = TextEditingController();

  var Result = "";

  var bgColor = Colors.indigo.shade200;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bmi".toUpperCase(),style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.orange,
      ),
        body:Container(

          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xffffecd2),
                Color(0xfffcb69f),
                // linear-gradient(to right, #2b5876 0%, #4e4376  51%, #2b5876  100%)
              ]

            )
          ),

          child:Center(
                child: Container(
                  width: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 11),
                      TextField(
                      style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w900),
                        controller: wtController,
                        decoration: InputDecoration(
                           label: Text('Enter Your Weight (in Kgs)',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold)),
                           prefixIcon: Icon(Icons.line_weight),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(height: 11),
                      TextField(
                        style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w900),
                        controller: ftController,
                        decoration: InputDecoration(
                          label: Text('Enter Your Height (in Feet)',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold)),
                          prefixIcon: Icon(Icons.height),
                          counter: Offstage(),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                      ),
                      SizedBox(height: 11),
                      TextField(
                        style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w900),
                        controller: inchController,
                        decoration: InputDecoration(
                          label: Text('Enter Your Height (in Inch)',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold)),
                          prefixIcon: Icon(Icons.height),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(height:60),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor : Colors.orange // This is what you need!
                          ),
                          onPressed: (){
                        var wt = wtController.text.toString();
                        var ft = ftController.text.toString();
                        var inch = inchController.text.toString();

                        if(wt!="" && ft!="" && inch!=""){

                          var iwt = int.parse(wt);
                          var ift = int.parse(ft);
                          var iInch = int.parse(inch);

                          var tInch = (ift*12) + iInch;
                          var tcm  = tInch*2.54;
                          var tm = tcm/100;
                          var Bmi = iwt/(tm*tm);

                          var msg = '';

                          if (Bmi>25){
                            msg  = "You are over weight!!";
                            bgColor = Colors.orange.shade200;
                          }
                          else if(Bmi<18){
                            msg = "You are under weight!!";
                            bgColor = Colors.red.shade300;
                          }else{
                            msg = "You are Healthy!!";
                            bgColor = Colors.green.shade200;
                          }

                          setState(() {
                            Result = "$msg \n Your BMI is  ${Bmi.toStringAsFixed(2)}";
                          });
                        }
                        else {
                          setState(() {
                            Result = "Fill all the blanks";

                          });
                        }
                      }, child:Text('Calculate',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold))),

                      SizedBox(height: 30,),

                      Text(Result,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
          ),
        )
    );
  }
}




