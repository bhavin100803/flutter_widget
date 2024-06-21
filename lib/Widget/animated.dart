import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class animatedWidget extends StatefulWidget {
  const animatedWidget({super.key});

  @override
  State<animatedWidget> createState() => _animatedWidgetState();
}

class _animatedWidgetState extends State<animatedWidget> {

  var myOpacity = 1.0;

  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
          backgroundColor: Colors.blue,
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(opacity: myOpacity, duration: Duration(seconds: 2),curve: Curves.bounceInOut,
              child: Container(
                width: 200,
                height: 100,
                color: Colors.blue,
              ),
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  if(isVisible){
                    myOpacity = 0.0; //invisible
                    isVisible = false;
                  }else{
                    myOpacity = 1.0; //visible
                    isVisible = true;
                  }

                });
              }, child: Text('Close'))
            ],
          ),
        )
    );
  }
}
