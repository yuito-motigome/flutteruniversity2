import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  final String firstmessage;
  final String secondmessage;
  final int thirdmessage;
  Second(this.firstmessage,this.secondmessage,this.thirdmessage);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go back!'),
            ),

          ),
          (thirdmessage == 1)
          ?  Text(firstmessage)  
          :   Text(secondmessage),
          
             

        ],
      ),
    );
  }
}