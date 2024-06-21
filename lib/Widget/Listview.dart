import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListviewWidget extends StatelessWidget {
  const ListviewWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    var arrNames = ["bhavin", "jaydip", "raj", "jeet", "kashyap", "jago"];
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
        ),
        body: ListView.separated(itemBuilder: (context, index) {
          return ListTile(
            leading:Text('${index+1}') ,
            title:Text(arrNames[index]) ,
            subtitle: Text('number'),
            trailing: Icon(Icons.add),
          );
          //   Row(
          //   children: [
          //   Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Column(
          //       children: [
          //         Text(arrNames[index],style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          //         Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Text(arrNames[index],style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          //         ),
          //       ],
          //     ),
          //   ),
          //
          //   Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Text(arrNames[index],style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          //   )
          //   ],
          // );
        },
        itemCount: arrNames.length,
          separatorBuilder: (context,index){
          return Divider(height: 50,thickness: 2,);
          },
        )
        // Center(
        //   child: ListView(
        //     scrollDirection: Axis.horizontal,
        //
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text('one',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text('Two',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text('Three',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text('Four',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text('Five',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        //       )
        //     ],
        //   ),
        // )

    );
  }
}
