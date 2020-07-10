import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function ans;
  final String ansT;

  Answers(this.ans,this.ansT);
  @override

  Widget build(BuildContext context) {
    return Container(
        //height: 200,
        child: RaisedButton(
    color: Colors.blue[900],
    textColor: Colors.white,
    child: Text(ansT),
    onPressed: ans,
    ),
      
         width: double.infinity,
    color: Colors.blue[100],
    margin: EdgeInsets.all(10),
    //padding: EdgeInsets.all(15),
      );
  }
}