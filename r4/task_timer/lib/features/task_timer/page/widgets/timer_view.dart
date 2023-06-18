import 'package:flutter/material.dart';
import 'package:flutter_podstawy_utilities/colors/my_colors.dart';
import 'package:flutter_podstawy_utilities/helpers/duration_helper.dart';

class TimerView extends StatelessWidget {
  final Duration duration;
  final String taskName;

  const TimerView({super.key, required this.duration, required this.taskName});

  @override
  Widget build(BuildContext context) {
    var mainTextStyle = _getMainTextStyle(context);
    var taskNameTextStyle = _getTaskNameTextStyle(context);
    var secondsTextStyle = _getTextStyleForSeconds(context);
    var formattedDuration = DurationHelper.formatDurationToHms(duration);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              TextSpan(text: formattedDuration[0], style: mainTextStyle),
              TextSpan(text: ":", style: mainTextStyle),
              TextSpan(text: formattedDuration[1], style: mainTextStyle),
              TextSpan(text: ":", style: mainTextStyle),
              TextSpan(text: formattedDuration[2], style: secondsTextStyle),
            ],
          ),
        ),
        Text(
          taskName,
          style: taskNameTextStyle,
        ),
      ],
    );
  }

  TextStyle? _getMainTextStyle(BuildContext context) => Theme.of(context)
      .textTheme
      .displayMedium
      ?.copyWith(color: MyColors.white, fontWeight: FontWeight.bold);

  TextStyle? _getTextStyleForSeconds(BuildContext context) => Theme.of(context)
      .textTheme
      .displayMedium
      ?.copyWith(color: MyColors.fireEngineRed, fontWeight: FontWeight.bold);

  TextStyle? _getTaskNameTextStyle(BuildContext context) => Theme.of(context)
      .textTheme
      .headlineSmall
      ?.copyWith(color: MyColors.white, fontWeight: FontWeight.bold);
}
