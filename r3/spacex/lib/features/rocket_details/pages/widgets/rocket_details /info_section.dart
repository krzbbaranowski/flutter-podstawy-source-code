import 'package:flutter/material.dart';
import 'package:flutter_podstawy_utilities/colors/my_colors.dart';
import 'package:flutter_podstawy_utilities/widgets/margins.dart';

class InfoSection extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color subtitleColor;

  const InfoSection(
      {super.key,
      required this.title,
      required this.subtitle,
      this.subtitleColor = MyColors.eerieBlack});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const VerticalBigMargin(),
        Text(
          title.toUpperCase(),
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(color: MyColors.ufoGreen, fontWeight: FontWeight.bold),
        ),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
              color: subtitleColor, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
