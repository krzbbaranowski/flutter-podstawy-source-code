import 'package:flutter/material.dart';
import 'package:flutter_podstawy_utilities/widgets/margins.dart';

import '../../../models/task.dart';
import 'sessions_summary.dart';
import 'time_summary.dart';

class TaskSummary extends StatelessWidget {
  final Task task;

  const TaskSummary({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SessionsSummary(task),
        const VerticalNormalMargin(),
        TimeSummary(task)
      ],
    );
  }
}
