import 'package:flutter/material.dart';

void main(List<String> args) {

  runApp(TestApp());
}

class TestApp extends StatelessWidget{
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    var myPinkContainer = Container(
          color: Colors.pink,
          height: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              myContainer(),
              myContainer(),
            ],
          ),
        );
    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Test App"),
        ),

        body: myMainColumn(myPinkContainer),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
          debugPrint("Click Button!");},
        backgroundColor: Colors.red,
        child: const Icon(Icons.add_a_photo_outlined),
        ),

      )

    );
  }

  Column myMainColumn(Container myPinkContainer) {
    return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [myPinkContainer, myPinkContainer],
      );
  }

  Container myContainer() {
    return Container(
        color: Colors.amber,
        height: 150,
        width: 150,
        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        padding: EdgeInsets.all(8),
        alignment: Alignment.center,
        child: Container(
        alignment: Alignment.center,
        width: 100,
        height: 100,
        color: Colors.red,
        child: const Text("Hello Flutter"),
        ),
      );
  }
}