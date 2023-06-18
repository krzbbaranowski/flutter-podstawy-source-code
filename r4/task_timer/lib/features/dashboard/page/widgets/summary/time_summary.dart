import 'package:flutter/material.dart';
import 'package:flutter_podstawy_utilities/constants/dimens.dart';
import 'package:flutter_podstawy_utilities/helpers/duration_helper.dart';

import '../../../models/task.dart';

class TimeSummary extends StatelessWidget {
  final Task task;

  const TimeSummary(
    this.task, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var mappedDuration = DurationHelper.formatDurationToHms(task.totalDuration);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Time",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
        Padding(
          padding: const EdgeInsets.only(left: Dimens.normalMargin),
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            _buildTimeSegment(context, mappedDuration[0], "h"),
            _buildTimeSegment(context, mappedDuration[1], "m"),
            _buildTimeSegment(context, mappedDuration[2], "s")
          ]),
        ),
      ],
    );
  }

  Widget _buildTimeSegment(
      BuildContext context, String value, String segmentName) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(value,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .displayMedium
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
        Text(segmentName,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold))
      ],
    );
  }
}
