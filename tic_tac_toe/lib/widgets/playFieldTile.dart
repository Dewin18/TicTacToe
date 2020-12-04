import 'package:flutter/material.dart';

class PlayFieldTile extends StatelessWidget {

  final List symbols;
  final int symbolIndex;
  final String symbol;
  final Function markField;

  PlayFieldTile(this.symbols, this.symbolIndex, this.symbol, this.markField);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        symbols[symbolIndex],
        style: TextStyle(
          fontFamily: 'Permanent Marker',
          fontSize: 60,
          color: symbols[symbolIndex] == 'X'
              ? Colors.red
              : Colors.blue
        ),

      ),
      onPressed: () {
        if(symbols[symbolIndex] == '') {
          symbols[symbolIndex] = symbol;
          markField();
        }
      },
      //color: Colors.grey[50],
      //shape: Border(left: BorderSide.none, top: BorderSide.none),
    );
  }
}
