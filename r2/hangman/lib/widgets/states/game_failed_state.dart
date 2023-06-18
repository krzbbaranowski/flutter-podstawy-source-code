import 'package:flutter/material.dart';
import 'package:flutter_podstawy_utilities/colors/my_colors.dart';
import 'package:provider/provider.dart';

import '../../view_models/game_view_model.dart';
import '../game_result_view.dart';

class GameFailedState extends StatelessWidget {
  const GameFailedState({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GameResultView(
        action:
            Provider.of<GameViewModel>(context, listen: false).prepareNewGame,
        screenTitle: "Game failed!",
        actionTitle: "Start new game!",
        backgroundColor: MyColors.fireEngineRed);
  }
}
