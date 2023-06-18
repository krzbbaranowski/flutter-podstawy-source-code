import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_podstawy_utilities/constants/dimens.dart';
import 'package:flutter_podstawy_utilities/widgets/margins.dart';
import 'package:spacex/features/rocket_details/pages/widgets/rocket_details%20/logo.dart';
import 'package:spacex/features/rocket_details/pages/widgets/rocket_details%20/rocket_name.dart';
import 'package:spacex/features/rocket_details/pages/widgets/rocket_details%20/rocket_secondary_details.dart';

import '../../../cubit/rocket_details_state.dart';
import '../../../domain/models/rocket.dart';
import 'info_section.dart';

class RocketDetails extends StatelessWidget {
  final RocketsLoaded state;

  const RocketDetails({required this.state, super.key});

  @override
  Widget build(BuildContext context) {
    var rocket = state.selectedRocket;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const VerticalBigMargin(),
          const Logo(),
          RocketName(name: rocket.name),
          _buildGeneralInfo(rocket),
          RocketSecondaryDetails(rocket: rocket),
        ],
      ),
    );
  }

  Widget _buildGeneralInfo(Rocket rocket) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: Dimens.bigMargin, vertical: Dimens.normalMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InfoSection(title: tr("height"), subtitle: "${rocket.height} M"),
          InfoSection(title: tr("diameter"), subtitle: "${rocket.diameter} M"),
          InfoSection(title: tr("mass"), subtitle: "${rocket.mass} KG"),
        ],
      ),
    );
  }
}
