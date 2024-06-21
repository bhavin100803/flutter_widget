import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Textadditing_Textfield extends StatefulWidget {
  const Textadditing_Textfield({super.key});

  @override
  State<Textadditing_Textfield> createState() => _Textadditing_TextfieldState();
}

class _Textadditing_TextfieldState extends State<Textadditing_Textfield> {
  var emailText = TextEditingController();
  var passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
        ),
        body: Center(
            child: Container(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                        keyboardType: TextInputType.phone,
                        controller: emailText,
                        decoration: InputDecoration(
                          hintText: 'Enter Your Email ',
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                  color: Colors.deepOrange, width: 2)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                  color: Colors.blueAccent, width: 2)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide:
                                  BorderSide(color: Colors.black45, width: 2)),
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.remove_red_eye,
                              color: Colors.orange,
                            ),
                            onPressed: () {},
                          ),
                          prefixIcon: Icon(
                            Icons.email_sharp,
                            color: Colors.orange,
                          ),
                        )),
                    Container(
                      height: 11,
                    ),
                    TextField(
                      controller: passText,
                      obscureText: true,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                          hintText: 'Enter Your Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide:
                                  BorderSide(color: Colors.deepOrange))),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          String uMail = emailText.text.toString();
                          String upass = passText.text;

                          print("Email: $uMail,pass:$upass");
                        },
                        child: Text('Login'))
                  ],
                ))));
  }
}
