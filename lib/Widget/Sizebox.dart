import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Color.dart';

class SizeboxWidget extends StatelessWidget {
  const SizeboxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
          backgroundColor: Constante.my_primary,
        ),
        body:Wrap(
          children: [
            SizedBox.square(
                dimension: 100,
                child: ElevatedButton(
                  onPressed: (){},
                  child: Text('Click'),
                ),
              ),
            SizedBox(
              width: 20,
            ),
            SizedBox.square(
              dimension: 100,
              child: ElevatedButton(
                onPressed: (){},
                child: Text('Click'),
              ),
            ),
          ],
        )
    );
  }
}
