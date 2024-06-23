import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sharedwidget extends StatefulWidget {
  const Sharedwidget({super.key});

  @override
  State<Sharedwidget> createState() => _SharedwidgetState();
}

class _SharedwidgetState extends State<Sharedwidget> {
  var nameController = TextEditingController();

  static const String KEYNAME = "name";

  var nameValue = "No Value Saved";

  @override
  void initState() {
    super.initState();
    getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Shared Pref"),
          backgroundColor: Colors.blue,
        ),
        body:Center(
          child: Container(
            width: 300,
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
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue
                  ),
                    onPressed: () async {
                     var name = nameController.text.toString();
                     var prefs = await SharedPreferences.getInstance();
                     prefs.setString(KEYNAME,nameController.text.toString());
                }, child: Text('Save',style: TextStyle(color: Colors.white),)),
                SizedBox(height: 11,),
                Text(nameValue)

              ],
            ),
          ),
        )
    );
  }

  void getValue() async {

      var prefs = await SharedPreferences.getInstance();

      var getName =   prefs.getString(KEYNAME);

      nameValue = getName ?? "No Value Saved";
      setState(() {

      });

  }
}


