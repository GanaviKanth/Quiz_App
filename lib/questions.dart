import 'package:flutter/material.dart';
class Questions extends StatelessWidget {
   final String questionText;
   @override
   Questions(this.questionText);
   Widget build(BuildContext context) {
    return Center(
      child: Container(
        child:
          Text(questionText,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 28),
          ),
       color: Colors.green[200],
       margin: EdgeInsets.all(30),
       padding: EdgeInsets.all(20), 
    ),
    );
  }
}