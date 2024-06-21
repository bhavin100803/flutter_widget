import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Color.dart';

class Date_Time_Picker extends StatelessWidget {
  const Date_Time_Picker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
          backgroundColor: Constante.my_primary,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Select The Date',
                style: TextStyle(fontSize: 30),
              ),
              ElevatedButton(
                  onPressed: () async {
                    DateTime? datepicked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2021),
                        lastDate: DateTime(2025));

                    if (datepicked != null) {
                      print(
                          'Date Selected: ${datepicked.day}-${datepicked.month}-${datepicked.year}');
                    }
                  },
                  child: Text('show')),
              ElevatedButton(
                  onPressed: () async {
                    TimeOfDay? pickedTime = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                        initialEntryMode: TimePickerEntryMode.dial
                    );
                    if(pickedTime!=null){
                      print('Time Selected: ${pickedTime.hour}:${pickedTime.minute}');
                    }
                  },
                  child: Text('Select Time'))
            ],
          ),
        ));
  }
}
