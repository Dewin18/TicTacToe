import 'package:flutter/material.dart';
import 'package:tic_tac_toe/playFieldTile.dart';

class PlayField extends StatelessWidget {

  final Function markField;
  final List symbols;
  final String symbol;

  PlayField(this.markField, this.symbols, this.symbol);

  @override
  Widget build(BuildContext context) {

    return  GridView.count(
      crossAxisCount: 3,
      children: [
        PlayFieldTile(symbols, 0, symbol, markField),
        PlayFieldTile(symbols, 1, symbol, markField),
        PlayFieldTile(symbols, 2, symbol, markField),
        PlayFieldTile(symbols, 3, symbol, markField),
        PlayFieldTile(symbols, 4, symbol, markField),
        PlayFieldTile(symbols, 5, symbol, markField),
        PlayFieldTile(symbols, 6, symbol, markField),
        PlayFieldTile(symbols, 7, symbol, markField),
        PlayFieldTile(symbols, 8, symbol, markField),
      ],
      shrinkWrap: true,
    );
  }
}
