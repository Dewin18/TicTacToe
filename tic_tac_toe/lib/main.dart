import 'package:flutter/material.dart';

import 'util/playFieldObserver.dart';
import 'widgets/playerHeader.dart';
import 'widgets/scorePanel.dart';
import 'widgets/gameOverDialog.dart';
import 'widgets/playField.dart';

void main() {
  runApp(TicTacToe());
}

class TicTacToe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TicTacToe'),
        ),
        body: GameContent()
      ),
    );
  }
}

class GameContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GameContentState();
  }
}

class _GameContentState extends State<GameContent> {
  final _symbols = List.generate(9, (index) => '');

  String _symbol = 'x';
  String _player = '1';
  int _playerOneScore, _playerTwoScore = 0;

  void _newGame() {
    setState(() {
      for(int i = 0; i < _symbols.length; i++) {
        _symbols[i] = '';
      }
    });
  }

  void _resetGame() {
    _newGame();
    _playerOneScore = 0;
    _playerTwoScore = 0;
  }

  String getNextPlayer() {
    return (_player == '1') ? '2' : '1';
  }

  String getNextSymbol() {
    return (_symbol == 'X') ? 'O' : 'X';
  }

  void _changePlayerAndSymbol() {
    setState(() {
      _symbol = getNextSymbol();
      _player = getNextPlayer();
    });
  }

  String getDialogText(PlayFieldObserver playFieldObserver) {
    if(playFieldObserver.isDraw()) {
      return 'Draw.';
    } else {
      getNextSymbol() == 'X' ? _playerTwoScore++ : _playerOneScore++;
      return 'Player ${getNextPlayer()} (${getNextSymbol()}) won!';
    }
  }

  @override
  Widget build(BuildContext context) {
    PlayFieldObserver playFieldObserver = PlayFieldObserver(_symbols);

    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          PlayerHeader(_player, _symbol),
          Stack(
            children: [
              AbsorbPointer(
                absorbing: playFieldObserver.isGameOver(),
                child: Column(
                  children: [
                    PlayField(_changePlayerAndSymbol, _symbols, _symbol),
                    ScorePanel(_playerOneScore, _playerTwoScore),
                    RaisedButton(
                        child: Text('Reset game'),
                        onPressed: _resetGame,
                    )
                  ],
                ), //
              ),
              if(playFieldObserver.isGameOver() || playFieldObserver.isDraw())
                GameOverDialog(getDialogText(playFieldObserver), _newGame),
            ],
          )
        ],
      ),
    );
  }
}