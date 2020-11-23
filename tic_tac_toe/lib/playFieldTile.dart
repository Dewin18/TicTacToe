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
      child: Text(symbols[symbolIndex]),
      onPressed: () {

        if(symbols[symbolIndex] == '') {
          symbols[symbolIndex] = symbol;
          markField();
          print(symbols);
        }
      },
      //color: Colors.grey[50],
      //shape: Border(left: BorderSide.none, top: BorderSide.none),
    );
  }
}
