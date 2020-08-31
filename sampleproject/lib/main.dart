import 'package:flutter/material.dart';
import 'package:sampleproject/Answer.dart';
import './Question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var question = [
    {
      'questionText': 'What\'s your Faivorite color',
      'answer': ['Red', 'Black', 'Blue', 'Green']
    },
    {
      'questionText': 'What\'s your Faivorite animal',
      'answer': ['Rabbit', 'Cat', 'Lion', 'Dog']
    },
    {
      'questionText': 'Who\'s your Faivorite instructor',
      'answer': ['Max', 'Max', 'MAX', 'Max']
    },
  ];
  var questionindex = 0;
  void restart() {
    setState(() {
      questionindex = 0;
      
    });
    
  }

  void answerquestion() {
    setState(() {
      questionindex = questionindex + 1;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: questionindex < question.length
            ? Column(
                children: [
                  Question(question[questionindex]['questionText']),
                  ...(question[questionindex]['answer'] as List<String>)
                      .map((answer) {
                    return Answer(answerquestion, answer);
                  }).toList(),
                ],
              )
            : Column(
                children: [
                  Text('You did it'),
                  FlatButton(
                      onPressed: restart, child: Text('Press to restart'))
                ],
              ),
      ),
    );
  }
}
/*void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionindex = 0;
  void questionanswer() {
    setState(() {
      questionindex = questionindex + 1;
    });
    
  }

  Widget build(BuildContext context) {
    var question = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Column(
          children: [
            Question(question[questionindex]),
            Answer(questionanswer),
            Answer(questionanswer),
            Answer(questionanswer),
          ],
        ),
      ),
    );
  }
}
*/
