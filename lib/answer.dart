import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final Function handler;
  Answer(this.text, this.handler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(text),
        onPressed: handler,
      ),
    );
  }
}
