import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_podstawy_utilities/colors/my_colors.dart';
import 'package:flutter_podstawy_utilities/constants/dimens.dart';
import 'package:flutter_podstawy_utilities/widgets/margins.dart';

import '../../../domain/models/rocket.dart';
import 'article.dart';
import 'info_section.dart';
import 'photos_section.dart';

class RocketSecondaryDetails extends StatelessWidget {
  final Rocket rocket;

  const RocketSecondaryDetails({
    super.key,
    required this.rocket,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: MyColors.eerieBlack,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Dimens.bigMargin, vertical: Dimens.normalMargin),
          child: _buildDetailsMainContent(),
        ));
  }

  Widget _buildDetailsMainContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Article(
            title: tr("rocket_details"),
            description: rocket.description,
            moreDetailsUrl: rocket.moreDetailsUrl),
        const VerticalHugeMargin(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InfoSection(
              title: tr("stages"),
              subtitle: "${rocket.stages}",
              subtitleColor: MyColors.white,
            ),
            InfoSection(
              title: tr("first_flight"),
              subtitle: DateFormat('dd.MM.yyyy').format(rocket.firstFlight),
              subtitleColor: MyColors.white,
            ),
          ],
        ),
        InfoSection(
            title: tr("cost_per_launch"),
            subtitle:
                "${NumberFormat("#,##0").format(rocket.costPerLaunch)} USD",
            subtitleColor: MyColors.white),
        const VerticalBigMargin(),
        PhotosSection(rocket.imageUrls),
        const VerticalHugeMargin(),
      ],
    );
  }
}
