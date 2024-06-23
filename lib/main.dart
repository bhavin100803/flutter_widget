import 'package:demo2/Widget/Ripple_Animation.dart';
import 'package:flutter/material.dart';
import 'Widget/SharedWidget.dart';

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
      home: Sharedwidget()
    );
  }

}




