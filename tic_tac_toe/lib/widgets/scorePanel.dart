import 'package:flutter/material.dart';

class ScorePanel extends StatelessWidget {

  final int playerOneScore;
  final int playerTwoScore;

  ScorePanel(this.playerOneScore, this.playerTwoScore);

  @override
  Widget build(BuildContext context) {
    return Text('(X)  - $playerTwoScore : $playerOneScore -  (O)');
  }
}
