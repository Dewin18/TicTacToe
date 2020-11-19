import 'package:flutter/material.dart';

import './playfield.dart';

void main() {
  runApp(TicTacToe());
}

class TicTacToe extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TicTacToeState();
  }
}

class _TicTacToeState extends State<TicTacToe> {

  void _markField() {
    print('Button click!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TicTacToe'),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Text('Inside body'),
              PlayField(_markField)
            ],
          ),
        ),
      ),
    );
  }
}