import 'package:flutter/material.dart';
import 'package:flutter_podstawy_utilities/constants/dimens.dart';

import '../../../models/task.dart';

class SessionsSummary extends StatelessWidget {
  final Task task;

  const SessionsSummary(this.task, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Sessions",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
        Padding(
          padding: const EdgeInsets.only(left: Dimens.normalMargin),
          child: Text(task.sessions.toString(),
              style: Theme.of(context)
                  .textTheme
                  .displayMedium
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
        )
      ],
    );
  }
}
