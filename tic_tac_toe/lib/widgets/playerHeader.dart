import 'package:flutter/material.dart';

class PlayerHeader extends StatelessWidget {

  final String player;
  final String symbol;

  PlayerHeader(this.player, this.symbol);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Next: ',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
            /*Text(
              'Player $player ',
              style: TextStyle(
                fontSize: 16,
              ),
            ),*/
            Text(
              '$symbol',
              style: TextStyle(
                fontFamily: 'Permanent Marker',
                fontSize: 16,
                color: symbol == 'X'
                    ? Colors.red
                    : Colors.blue,
              ),
            )
          ],
        )
    );
  }
}
