import 'dart:ffi';

import 'package:flutter/material.dart';

class RoundBtn extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  RoundBtn(
      {required this.btnName,
      this.icon,
      this.bgColor = Colors.cyan,
      this.textStyle,
      this.callback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!();
      },
      child: icon != null
          ? Row(
        mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon!,
                Container(
                  width: 5,
                ),
                Text(
                  btnName,
                  style: textStyle,
                )
              ],
            )
          : Text(
              btnName,
              style: textStyle,
            ),
      style: ElevatedButton.styleFrom(
          backgroundColor : bgColor,
          shadowColor: bgColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
             Radius.circular(21),
          )
          )
      ),
    );
  }
}
