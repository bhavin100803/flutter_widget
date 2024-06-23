import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimationWidget extends StatefulWidget {
  const AnimationWidget({super.key});

  @override
  State<AnimationWidget> createState() => _AnimationWidgetState();
}

class _AnimationWidgetState extends State<AnimationWidget> with SingleTickerProviderStateMixin{
  late Animation animation;
  late Animation colorAnimation;
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this,duration: Duration(seconds: 4));
    animation = Tween(begin:200.0,end: 100.0).animate(animationController);
    colorAnimation = ColorTween(begin: Colors.black,end: Colors.orange).animate(animationController);

    animationController.addListener((){
      print(animation.value);
      setState(() {

      });
    });

    animationController.forward();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tween"),
          backgroundColor: Colors.blue,
        ),
        body:Center(
          child: Container(
            width: animation.value,
            height: animation.value,
            color: colorAnimation.value,

          ),
        )
    );
  }
}

