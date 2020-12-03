class PlayFieldObserver  {

  final List<String> symbols;

  PlayFieldObserver(this.symbols);

  bool isDraw() {
    return !isGameOver() && isPlayFieldFull();
  }

  bool isPlayFieldFull() {
    int counter = 0;
    for(int i = 0; i < symbols.length; i++) {
      if (symbols[i] != '') {
        counter++;
      }
    }
    return counter == 9;
  }

  bool isGameOver() {
    return _isRowWin() || _isColumnWin() || _isDiagonalWin();
  }

  bool _isRowWin() {
    return (symbols[0] != '') && (symbols[0] == symbols[1] && symbols[1] == symbols[2]) ||
           (symbols[3] != '') && (symbols[3] == symbols[4] && symbols[4] == symbols[5]) ||
           (symbols[6] != '') && (symbols[6] == symbols[7] && symbols[7] == symbols[8]);
  }

  bool _isColumnWin() {
    return (symbols[0] != '') && (symbols[0] == symbols[3] && symbols[3] == symbols[6]) ||
           (symbols[1] != '') && (symbols[1] == symbols[4] && symbols[4] == symbols[7]) ||
           (symbols[2] != '') && (symbols[2] == symbols[5] && symbols[5] == symbols[8]);
  }

  bool _isDiagonalWin() {
    return (symbols[0] != '') && (symbols[0] == symbols[4] && symbols[4] == symbols[8]) ||
           (symbols[6] != '') && (symbols[6] == symbols[4] && symbols[4] == symbols[2]);
  }
}
