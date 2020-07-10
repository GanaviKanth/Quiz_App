import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _qn = 0;
  var _totalScore = 0;
   var _questions=[
      {'qText':'1. National bird of India',
       'ansText': [
          {'text':'parrot','score': 0},
          {'text':'eagle','score':0},
          {'text':'peacock','score':1}
          ],
      },
      {'qText':'2. National animal of India',
       'ansText': [ 
          {'text':'lion','score': 0},
          {'text':'tiger','score':1},
          {'text':'elephant','score':0},
          {'text':'giraffe','score':0}
          ],
      },
      {'qText':'3. National sport of India',
       'ansText': [
          {'text':'footbal','score': 0},
          {'text':'cricket','score':0},
          {'text':'basketball','score':0},
          {'text':'hockey','score':1}
       ],
      },
     ];

  void _answerChosen(int score) {
    _totalScore += score; 
    setState(() {
      _qn = _qn + 1;
    });
    //print(qn);
  }
  void _restart() {
    setState(() {
      _totalScore = 0;
    _qn = 0;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    
   
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
          centerTitle: true,
          backgroundColor: Colors.brown,
        ),
      
        
        body: _qn < _questions.length 
        ? Quiz(
          answerChosen: _answerChosen ,
          questions: _questions, 
          qn: _qn,
          ) 
        :  
          Result(_totalScore, _restart),
          
        
      ),
    );
  }
}