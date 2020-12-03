import 'package:flutter/material.dart';

class PlayerHeader extends StatelessWidget {

  final String player;
  final String symbol;

  PlayerHeader(this.player, this.symbol);

  @override
  Widget build(BuildContext context) {
    return Text('Player $player ($symbol)');
  }
}
