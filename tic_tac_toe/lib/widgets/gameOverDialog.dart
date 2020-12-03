import 'package:flutter/material.dart';

class GameOverDialog extends StatelessWidget {

  final String dialogText;
  final Function newGame;

  GameOverDialog(this.dialogText, this.newGame);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      //backgroundColor: Color.fromARGB(1, 1, 1, 1),
      title: Text(dialogText),
      children: [
        RaisedButton(
            child: Text('Start new game'),
            onPressed: newGame
        )
      ],
    );
  }
}
