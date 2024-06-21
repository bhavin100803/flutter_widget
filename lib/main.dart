import 'package:demo2/Splash_screen.dart';
import 'package:demo2/Widget/Awesome.dart';
import 'package:demo2/Widget/Bmiapp.dart';
import 'package:demo2/Widget/Button.dart';
import 'package:demo2/Widget/Call_Back.dart';
import 'package:demo2/Widget/Card.dart';
import 'package:demo2/Widget/Center.dart';
import 'package:demo2/Widget/Clippers.dart';
import 'package:demo2/Widget/Columns_Rows.dart';
import 'package:demo2/Widget/Constraint.dart';
import 'package:demo2/Widget/Container.dart';
import 'package:demo2/Widget/Cross_feed.dart';
import 'package:demo2/Widget/Custom.dart';
import 'package:demo2/Widget/Customfont.dart';
import 'package:demo2/Widget/Date_Time.dart';
import 'package:demo2/Widget/Date_Time_Picker.dart';
import 'package:demo2/Widget/Decorartion_container.dart';
import 'package:demo2/Widget/Expended.dart';
import 'package:demo2/Widget/Foo.dart';
import 'package:demo2/Widget/Gradient.dart';
import 'package:demo2/Widget/Gridview.dart';
import 'package:demo2/Widget/Icon.dart';
import 'package:demo2/Widget/Image.dart';
import 'package:demo2/Widget/Inkwell.dart';
import 'package:demo2/Widget/Circleavatar.dart';
import 'package:demo2/Widget/Listview.dart';
import 'package:demo2/Widget/Mapping.dart';
import 'package:demo2/Widget/Margin_Padding.dart';
import 'package:demo2/Widget/Position.dart';
import 'package:demo2/Widget/Range.dart';
import 'package:demo2/Widget/Rich.dart';
import 'package:demo2/Widget/RoundedButton.dart';
import 'package:demo2/Widget/Scrollview.dart';
import 'package:demo2/Widget/Sizebox.dart';
import 'package:demo2/Widget/Stack.dart';
import 'package:demo2/Widget/Statefull.dart';
import 'package:demo2/Widget/Style_Thame.dart';
import 'package:demo2/Widget/Switching_Screen.dart';
import 'package:demo2/Widget/Text.dart';
import 'package:demo2/Widget/Textadditing_Textfield.dart';
import 'package:demo2/Widget/Calculater_Stateful.dart';
import 'package:demo2/Widget/Wrap.dart';
import 'package:demo2/Widget/animated.dart';
import 'package:demo2/introPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Demo",
      // theme: ThemeData(
      //  textTheme: TextTheme(
      //    displayLarge: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.black),
      //    displayMedium: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.orange),
      //    titleMedium: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),
      //  )
      // ),
      home: Cross_feedWidget()
    );
  }

}




