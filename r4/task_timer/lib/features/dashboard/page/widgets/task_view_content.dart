import 'package:flutter/material.dart';
import 'package:flutter_podstawy_utilities/colors/my_colors.dart';
import 'package:flutter_podstawy_utilities/constants/dimens.dart';

import '../../../../styles/custom_dimens.dart';

class TaskViewContent extends StatelessWidget {
  final Color? backgroundColor;
  final Color borderColor;
  final String text;
  final VoidCallback onTap;

  const TaskViewContent(
      {super.key,
      this.backgroundColor = MyColors.charlestonGreen,
      this.borderColor = MyColors.charlestonGreen,
      required this.text,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: Dimens.smallMargin),
        child: SizedBox(
          height: 60,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: backgroundColor,
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: borderColor),
                    borderRadius:
                        BorderRadius.circular(CustomDimens.buttonRadius))),
            onPressed: onTap,
            child: Center(
              child: Text(text,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold, color: MyColors.white)),
            ),
          ),
        ));
  }
}
