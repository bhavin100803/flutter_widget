import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Color.dart';

class GridviewWedget extends StatelessWidget {
  const GridviewWedget({super.key});

  @override
  Widget build(BuildContext context) {
    var arrColors = [
      Colors.red,
      Colors.orange,
      Colors.grey,
      Colors.blue,
      Colors.pink,
      Colors.green,
      Colors.purple,
      Colors.brown
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
          backgroundColor: Constante.my_primary,
        ),
        body: GridView.builder(
          itemBuilder: (context, index) {
            return Container(
              color: arrColors[index],
            );
          },
          itemCount: arrColors.length,
          gridDelegate:
              SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100,
              crossAxisSpacing: 11,
                mainAxisSpacing: 11
              ),
        )

        

        // GridView.count(crossAxisCount: 4,
        // crossAxisSpacing: 11,
        // mainAxisSpacing: 11,
        // children: [
        //   Container(color: arrColors[0],),
        //   Container(color: arrColors[1],),
        //   Container(color: arrColors[2],),
        //   Container(color: arrColors[3],),
        //   Container(color: arrColors[4],),
        //   Container(color: arrColors[5],),
        //   Container(color: arrColors[6],),
        //   Container(color: arrColors[7],)
        // ],
        // )



        //   GridView.extent(
        //   crossAxisSpacing: 11,
        //   mainAxisSpacing: 11,
        //   maxCrossAxisExtent: 100,
        //   children: [
        //     Container(color: arrColors[0],),
        //     Container(color: arrColors[1],),
        //     Container(color: arrColors[2],),
        //     Container(color: arrColors[3],),
        //     Container(color: arrColors[4],),
        //     Container(color: arrColors[5],),
        //     Container(color: arrColors[6],),
        //     Container(color: arrColors[7],)
        //   ],
        // )

        );
  }
}
