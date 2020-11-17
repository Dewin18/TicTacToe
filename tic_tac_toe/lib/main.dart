import 'package:flutter/material.dart';

void main() => runApp(TicTacToe());

class TicTacToe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TicTacToe'),
        ),
        body: Column(
          children: [
            Text('Inside body')
          ],
        ),
      ),
    );
  }
}