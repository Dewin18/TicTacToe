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
  final _symbols = ['', '', '', '', '', '', '' ,'', '', ''];
  String _symbol = 'X';
  String _player = '1';
  bool _absorbingEvents = false;


  void _markField() {
    _changeSymbol();
    print('Button click!');
  }

  void _resetEverything() {
    setState(() {
      _symbols[0] ='';
      _symbols[1] ='';
      _symbols[2] ='';
      _symbols[3] ='';
      _symbols[4] ='';
      _symbols[5] ='';
      _symbols[6] ='';
      _symbols[7] ='';
      _symbols[8] ='';
    });
  }

  void _changeSymbol() {
    setState(() {
      _symbol == 'X' ? _symbol = 'O' : _symbol = 'X';
      _player == '1' ? _player = '2' : _player = '1';
    });
  }

  bool _checkIfWon() {
    return _isRowWin() || _isColumnWin() || _isDiagonalWin();
  }

  bool _isRowWin() {
    return (_symbols[0] != '') && (_symbols[0] == _symbols[1] && _symbols[1] == _symbols[2]) ||
           (_symbols[3] != '') && (_symbols[3] == _symbols[4] && _symbols[4] == _symbols[5]) ||
           (_symbols[6] != '') && (_symbols[6] == _symbols[7] && _symbols[7] == _symbols[8]);
  }

  bool _isColumnWin() {
    return (_symbols[0] != '') && (_symbols[0] == _symbols[3] && _symbols[3] == _symbols[6]) ||
           (_symbols[1] != '') && (_symbols[1] == _symbols[4] && _symbols[4] == _symbols[7]) ||
           (_symbols[2] != '') && (_symbols[2] == _symbols[5] && _symbols[5] == _symbols[8]);
  }

  bool _isDiagonalWin() {
    return (_symbols[0] != '') && (_symbols[0] == _symbols[4] && _symbols[4] == _symbols[8]) ||
           (_symbols[6] != '') && (_symbols[6] == _symbols[4] && _symbols[4] == _symbols[2]);
  }

  String getNextPlayer() {
    return (_symbol == 'X') ? 'O' : 'X';
  }

  String getNextSymbol() {
    return (_player == '1') ? '2' : '1';
  }

  @override
  Widget build(BuildContext context) {

    bool isGameOver = _checkIfWon();
    print(isGameOver);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TicTacToe'),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Text('Player ' + _player),
              Stack(
                children: [
                  AbsorbPointer(
                    absorbing: isGameOver,
                    child:  PlayField(_markField, _symbols, _symbol),
                  ),

                  if(isGameOver)
                    SimpleDialog(
                      //backgroundColor: Color.fromARGB(1, 1, 1, 1),
                      title: Text('Player ' + getNextPlayer() +  ' (' + getNextSymbol() +') won!'),
                      children: [
                        RaisedButton(
                            child: Text('Start new game'),
                            onPressed: _resetEverything
                        )
                      ],
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }


}