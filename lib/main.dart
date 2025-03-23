import 'package:flutter/material.dart';

void main(List<String> args) {

  runApp(TestApp());
}

class TestApp extends StatelessWidget{
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Test App"),
        ),

        body: Container(
          color: Colors.amber,
          height: 200,
          width: 200,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          padding: EdgeInsets.all(8),
          alignment: Alignment.center,
          child: Container(
          alignment: Alignment.center,
          width: 100,
          height: 100,
          color: Colors.red,
          child: const Text("Hello Flutter"),),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
          debugPrint("Click Button!");},
        backgroundColor: Colors.red,
        child: const Icon(Icons.add_a_photo_outlined),
        ),

      )

    );
  }
}