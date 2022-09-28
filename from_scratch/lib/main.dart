import 'package:flutter/material.dart';

// void main(){
//   runApp(const MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{

  var questionIndex = 0;
  
  void answerQuestion() {
    setState((){
          questionIndex = questionIndex + 1;
    });
    print('Answer chosen!');
  }

  @override //a decorator. Deliberately overriding the default behavior of the build method
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions.elementAt(questionIndex)), //questions[index]
            ElevatedButton(
                onPressed: answerQuestion, child: const Text('Answer 1')),
            ElevatedButton(
                onPressed: () => print('Answer 2 chosen!'),
                child: const Text('Answer 2')),
            ElevatedButton(
                onPressed: () {
                  //() is anonymous function
                  //...
                  print('Answer 3 chosen');
                },
                child: const Text('Answer 3')),
          ],
        ), //Widget is a class
      ),
    ); //Scaffold is a widget that provides a basic layout
  }
}
