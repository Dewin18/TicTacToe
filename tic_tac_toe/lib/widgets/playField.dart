import 'package:flutter/material.dart';
import './playFieldTile.dart';

class PlayField extends StatelessWidget {

  final int numberOfColumns = 3;
  final int numberOfTiles = 9;

  final Function markField;
  final List symbols;
  final String symbol;

  PlayField(this.markField, this.symbols, this.symbol);

  List<PlayFieldTile> getPlayFieldTiles() {
    return List.generate(numberOfTiles, (index) => PlayFieldTile(
        symbols,
        index,
        symbol,
        markField
    ));
  }

  @override
  Widget build(BuildContext context) {
    return  GridView.count(
      crossAxisCount: numberOfColumns,
      children: getPlayFieldTiles(),
      shrinkWrap: true,
    );
  }
}
