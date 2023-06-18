import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/word_to_guess.dart';
import '../../view_models/game_view_model.dart';
import '../hangman.dart';
import '../keyboard/hangman_keyboard.dart';
import '../word_to_guess_view.dart';

class GameStartedState extends StatelessWidget {
  const GameStartedState({super.key});

  @override
  Widget build(BuildContext context) {
    return Selector<GameViewModel, WordToGuess>(
      selector: (context, provider) => provider.wordToGuess,
      builder: (context, wordToGuess, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: WordToGuessView(wordToGuess),
            ),
            const Expanded(child: Hangman()),
            const HangmanKeyboard()
          ],
        );
      },
    );
  }
}
