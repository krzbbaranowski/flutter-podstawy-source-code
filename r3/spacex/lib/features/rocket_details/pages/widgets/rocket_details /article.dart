import 'package:flutter/material.dart';
import 'package:flutter_podstawy_utilities/colors/my_colors.dart';
import 'package:flutter_podstawy_utilities/widgets/margins.dart';

import 'read_more_button.dart';

class Article extends StatelessWidget {
  final String title;
  final String moreDetailsUrl;
  final String description;

  const Article(
      {super.key,
      required this.title,
      required this.description,
      required this.moreDetailsUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const VerticalBigMargin(),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: MyColors.ufoGreen, fontWeight: FontWeight.bold),
        ),
        Text(
          description,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: MyColors.white,
              ),
        ),
        const VerticalHugeMargin(),
        ReadMoreButton(uri: Uri.parse(moreDetailsUrl))
      ],
    );
  }
}
