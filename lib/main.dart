import 'package:flutter/material.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int question = 0;
  List word = ["Arvind", "Ashwin", "Suseela", "Selvaraj"];
  void reset() {
    setState(() {
      question += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Own App")),
            body: question < word.length
                ? Container(
                    child: Column(children: [
                    Text("Random Question",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 32)),
                    Answer(word[question], reset)
                  ]))
                : Center(
                    child: Column(
                    children: [
                      Text("You did it",
                          style: TextStyle(
                              fontSize: 39, fontWeight: FontWeight.bold)),
                    ],
                  ))));

    // This is the theme of your application.
    //
    // Try running your application with "flutter run". You'll see the
    // application has a blue toolbar. Then, without quitting the app, try
    // changing the primarySwatch below to Colors.green and then invoke
    // "hot reload" (press "r" in the console where you ran "flutter run",
    // or simply save your changes to "hot reload" in a Flutter IDE).
    // Notice that the counter didn't reset back to zero; the application
    // is not restarted.
  }
}
