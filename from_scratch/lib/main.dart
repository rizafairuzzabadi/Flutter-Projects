import 'package:flutter/material.dart';

// void main(){
//   runApp(const MyApp());
// }

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override //a decorator. Deliberately overriding the default behavior of the build method
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My First App'),
          ),
          body: const Text('Hello World!')),
    ); //Scaffold is a widget that provides a basic layout
  }
}
