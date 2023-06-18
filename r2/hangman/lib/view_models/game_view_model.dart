import 'package:hangman/enums/game_state.dart';
import 'package:hangman/models/word_to_guess.dart';

import '../models/letter.dart';
import '../models/word_to_guess.dart';
import '../pages/game_finished_page.dart';
import '../repositories /words_repository.dart';
import 'view_model_base.dart';

class GameViewModel extends ViewModelBase {
  static const int maxAttempts = 10;
  static const String toGuessSign = "_";

  GameState _gameState = GameState.notInitialized;
  List<String> _attemptedLetters = [];

  int _currentLevel = 0;
  int _attempts = 0;

  final WordsRepository _wordsRepository;

  GameViewModel(this._wordsRepository);

  WordToGuess _wordToGuess = WordToGuess.empty();

  List<String> get attemptedLetters => _attemptedLetters;

  GameState get gameState => _gameState;

  int get attempts => _attempts;

  WordToGuess get wordToGuess => _wordToGuess;

  Future<void> prepareNewGame() async {
    _currentLevel = 0;
    await _prepareNewLevel();
    notifyListeners();
  }

  Future<void> prepareNextLevel() async {
    await _prepareNewLevel();
    notifyListeners();
  }

  Future<void> letterClicked(String selectedLetter) async {
    if (_attemptedLetters.contains(selectedLetter)) {
      return;
    }
    _attemptedLetters = [..._attemptedLetters, selectedLetter];

    bool isCorrectLetter = _isCorrectLetterSelected(selectedLetter);
    if (!isCorrectLetter) {
      _proceedForWrongSelectedLetter();
      return;
    } else {
      var updatedLetters = _uncoverTheLetter(selectedLetter);
      _wordToGuess = WordToGuess(updatedLetters);
    }

    bool levelCompleted =
        !_wordToGuess.letters.any((element) => element.value == toGuessSign);

    bool gameCompleted =
        levelCompleted && (_currentLevel >= _wordsRepository.wordsCount);

    if (gameCompleted) {
      await navigationService
          .navigateToPageWithReplace(const GameFinishedPage());
      return;
    }

    if (levelCompleted) {
      _gameState = GameState.levelCompleted;
      notifyListeners();
      return;
    }

    notifyListeners();
  }

  Future<void> _prepareNewLevel() async {
    _attemptedLetters.clear();
    _attempts = 0;

    _gameState = GameState.notInitialized;

    // Fake loading
    await Future.delayed(const Duration(seconds: 1));

    var wordToGuess = _wordsRepository.getWord(_currentLevel);
    _currentLevel++;

    var letters = <Letter>[];
    letters = wordToGuess
        .split('')
        .map((letter) => Letter(toGuessSign, letter))
        .toList();

    _wordToGuess = WordToGuess(letters);
    _gameState = GameState.inProgress;
  }

  bool _isCorrectLetterSelected(String letterToCheck) =>
      _wordToGuess.letters.any((letter) =>
          letter.valueToGuess.toLowerCase() == letterToCheck.toLowerCase());

  void _proceedForWrongSelectedLetter() {
    _attempts++;
    bool attemptsAchieved = _attempts == maxAttempts;

    if (attemptsAchieved) {
      _gameState = GameState.failed;
    }

    notifyListeners();
  }

  List<Letter> _uncoverTheLetter(String letterToUncover) {
    var letters = [..._wordToGuess.letters];

    for (int i = 0; i < _wordToGuess.letters.length; i++) {
      String letter = _wordToGuess.letters[i].valueToGuess;

      if (letter.toLowerCase() == letterToUncover.toLowerCase()) {
        letters[i] = Letter(letterToUncover, letterToUncover);
      }
    }
    return letters;
  }
}
