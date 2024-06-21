import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Color.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
          backgroundColor: Constante.my_primary,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                   Icon(
                Icons.play_circle_outline,
                size: 100,
                color: Colors.orange,
              ),
             SizedBox(width: 10,),
             FaIcon(FontAwesomeIcons.github,size: 100,)

            ],
          ),
        ));
  }
}
