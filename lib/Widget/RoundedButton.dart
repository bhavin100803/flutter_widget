import 'package:demo2/Ui_helper/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Color.dart';
import '../wedgets/Round_btn.dart';

class RoundedButtonWidget extends StatefulWidget {
  const RoundedButtonWidget({super.key});

  @override
  State<RoundedButtonWidget> createState() => _RoundedButtonWidgetState();
}

class _RoundedButtonWidgetState extends State<RoundedButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
          backgroundColor: Constante.my_primary,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width:200,
                height: 75,
                child: RoundBtn(
                  btnName: 'Play',
                  icon: Icon(Icons.play_arrow),
                  callback: () {
                    print('Logged in!!');
                  },
                  textStyle: mTextStyle20(),
                ),
              ),
              Container(height: 11,),
              Container(
                width:200,
                height: 75,
                child: RoundBtn(
                  btnName: 'Press',
                  callback: () {
                    print('Logged in!!');
                  },
                  bgColor: Colors.orange,
                  textStyle: mTextStyle11(),
                ),
              ),
            ],
          ),
        ));
  }
}
