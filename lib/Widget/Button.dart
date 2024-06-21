import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
      ),
      body: OutlinedButton(
        child: Text('outline button'),
        onPressed: (){
          print('outline clicked');
        },
      )

      // ElevatedButton(
      //   child: Text('Elevated button!'),
      //   onPressed: (){
      //     print('Button Pressed');
      //   },
      // )

      // TextButton(
      //   child: Text('Click here '),
      //   onPressed: (){
      //     print('text is tapped');
      //   },
      //   onLongPress: (){
      //     print('long press!!');
      //   },
      // )


    );
  }
}
