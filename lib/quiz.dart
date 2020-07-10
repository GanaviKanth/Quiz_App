import 'package:flutter/widgets.dart';
import './answers.dart';
import './questions.dart';

class Quiz extends StatelessWidget {
  final int qn;
  final List<Map<String, Object>> questions;
  final Function answerChosen;

  Quiz(
      {
      @required this.answerChosen,
      @required this.questions,
      @required this.qn
      }
    );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: SingleChildScrollView(
              child: Column(
              children: [
                Questions(
                  questions[qn]['qText'], //1
                  ),
                  ...(questions[qn]['ansText'] as List<Map<String, Object>>).map((tempFunction) {  //2
                    return Answers(() => answerChosen(tempFunction['score']),tempFunction['text']);  //3
                  }).toList()  //4
                  
                  /* 1. finds the qtext of index _qn from the list questions
                     2. finds ansText of index _qn from questions and converts it to a list of strings
                        maps it to a funtion -tempFunction (this holds all the options of answers)
                     3. returns the _ansChosen func and tempfunction to Answer class
                        (_ansChosen increases _qn when answer is selected and tempFunction has all the answers)
                     4. .toList() converts only the tempFunction values to list
                     1. {...} spread operator. line 2 and 3 gives a nested list. 
                        to pull list items as an individual value use ...

                  */
                  
                   //tempFunction is used to get the current elemt of list
                //map returns a new list whose structure is different from others
                
              ],
            ),
      ),
    );
  }
}