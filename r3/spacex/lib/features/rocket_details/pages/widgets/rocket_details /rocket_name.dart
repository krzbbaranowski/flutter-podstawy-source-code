import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_podstawy_utilities/colors/my_colors.dart';
import 'package:flutter_podstawy_utilities/constants/dimens.dart';

class RocketName extends StatelessWidget {
  final String name;

  const RocketName({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.bigMargin),
      child: SizedBox(
        height: 100,
        child: Center(
          child: AutoSizeText(
            name,
            maxLines: 1,
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                color: MyColors.darkCharcoal, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
