import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_podstawy_utilities/colors/my_colors.dart';
import 'package:tinycolor2/tinycolor2.dart';

class SelectorTitle extends StatelessWidget {
  const SelectorTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Text(tr("select_rocket"),
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: TinyColor.fromColor(MyColors.sunglow).darken(30).color)),
    );
  }
}
