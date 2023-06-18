import 'package:flutter/material.dart';
import 'package:flutter_podstawy_utilities/colors/my_colors.dart';
import 'package:spacex/features/rocket_details/pages/widgets/selector/selector_title.dart';

import '../../../cubit/rocket_details_state.dart';
import 'rockets_list.dart';

class RocketsSelector extends StatelessWidget {
  static const double backgroundCornerRadius = 30;
  final RocketsLoaded state;

  const RocketsSelector({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: MyColors.sunglow,
        borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(backgroundCornerRadius)),
      ),
      child: Column(
        children: [
          const SelectorTitle(),
          RocketsList(
            rockets: state.rockets,
          ),
        ],
      ),
    );
  }
}
