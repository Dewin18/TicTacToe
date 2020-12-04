import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScorePanel extends StatelessWidget {

  final int playerOneScore;
  final int playerTwoScore;

  ScorePanel(this.playerOneScore, this.playerTwoScore);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'X ',
              style: TextStyle(
                fontFamily: 'Permanent Marker',
                fontSize: 20,
                color: Colors.red,
              ),
            ),
            Text(
              ' $playerTwoScore  :  $playerOneScore ',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              ' O',
              style: TextStyle(
                fontFamily: 'Permanent Marker',
                fontSize: 20,
                color: Colors.blue,
              ),
            )
          ],
        )
    );
  }
}
