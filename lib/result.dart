import 'package:flutter/material.dart';

class Result extends StatelessWidget {
   final int finalScore;
   final Function restartQuiz;
  Result(this.finalScore, this.restartQuiz);
  //static final String s=finalScore.toString();
  @override
 
  Widget build(BuildContext context) {
     final String s= finalScore.toString();
    return SingleChildScrollView(
          child: Container(
        height: 500,
        child: Center(

                child: Column(
                  children: <Widget>[
                    Container(
                      
                    child:  Text(('You have successfully conpleted the quiz'),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    
                    ),
                    
                    padding: EdgeInsets.all(50),

                    ),
                    
                    Container(
                      child: Text(('Your Score is $s'),
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      color: Colors.red,
                      padding: EdgeInsets.all(30),
                      //margin: EdgeInsets.all(10),
                    ),
                                      
                    Container(
                      child: RaisedButton(
                        onPressed: restartQuiz,
                        child: Text('RESTART'),
                        color: Colors.brown,
                        textColor: Colors.white,
                      
                      ),
                      padding: EdgeInsets.all(60),
                    )
                  ],
                ),
              ),
      ),
    );
  }
}