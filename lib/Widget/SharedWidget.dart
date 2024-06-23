import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sharedwidget extends StatefulWidget {
  const Sharedwidget({super.key});

  @override
  State<Sharedwidget> createState() => _SharedwidgetState();
}

class _SharedwidgetState extends State<Sharedwidget> {
  var nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Shared Pref"),
          backgroundColor: Colors.blue,
        ),
        body:Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                    label: Text('Name'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21)
                    )
                ),
              ),
              SizedBox(height: 11,),
              ElevatedButton(onPressed: () async {
                   var name = nameController.text.toString();
                  // var prefs = await SharedPreferences.getInstance();
                  // prefs.setString("name",nameController.text.toString());
              }, child: Text('Save')),
              SizedBox(height: 11,),
              Text('Saved Value')

            ],
          ),
        )
    );
  }
}


