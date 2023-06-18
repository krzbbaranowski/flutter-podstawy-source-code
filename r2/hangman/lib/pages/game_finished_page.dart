import 'package:flutter/material.dart';
import 'package:flutter_podstawy_utilities/colors/my_colors.dart';
import 'package:provider/provider.dart';

import '../di/di.dart';
import '../view_models/game_finished_view_model.dart';
import '../widgets/game_result_view.dart';

class GameFinishedPage extends StatelessWidget {
  const GameFinishedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: _buildContent()));
  }

  Widget _buildContent() {
    return ListenableProvider<GameFinishedViewModel>(
        create: (_) => sl<GameFinishedViewModel>(),
        builder: (context, _) => GameResultView(
              screenTitle: "Congratulations!",
              actionTitle: "Play again",
              backgroundColor: MyColors.ufoGreen,
              action: () {
                Provider.of<GameFinishedViewModel>(context, listen: false)
                    .startNewGame();
              },
            ));
  }
}
