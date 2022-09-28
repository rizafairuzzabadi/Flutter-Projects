import 'package:flutter/material.dart';

// void main(){
//   runApp(const MyApp());
// }

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  void answerQuestion(){
    print('Answer chosen!');
  }

  const MyApp({super.key}); //key is a property of the stateless widget     

  
  @override //a decorator. Deliberately overriding the default behavior of the build method
  Widget build(BuildContext context) {
    var questions = ['What\'s your favorite color?', 'What\'s your favorite animal?'];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My First App'),
          ),
          body: Column(children: [
            const Text('The question!'),
            ElevatedButton(onPressed: answerQuestion, child: const Text('Answer 1')), 
            ElevatedButton(onPressed: answerQuestion, child: const Text('Answer 2')),
            ElevatedButton(onPressed: answerQuestion, child: const Text('Answer 3')),
          ],), //Widget is a class
          ),
    ); //Scaffold is a widget that provides a basic layout
  }
}
