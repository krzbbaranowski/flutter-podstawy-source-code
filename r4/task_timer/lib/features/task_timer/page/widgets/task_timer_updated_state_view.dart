import 'package:flutter/material.dart';
import 'package:flutter_podstawy_utilities/widgets/margins.dart';
import 'package:task_timer/features/task_timer/page/widgets/timer_actions.dart';

import '../../cubit/task_timer_state.dart';
import 'lottie_view.dart';
import 'timer_view.dart';

class TaskTimerUpdatedStateView extends StatelessWidget {
  final TaskTimerUpdate state;

  const TaskTimerUpdatedStateView({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: TimerView(
            duration: state.duration,
            taskName: state.task.name,
          ),
        ),
        LottieView(isTimerEnabled: state.isTimerEnabled),
        const VerticalHugeMargin(),
        TimerActions(state: state)
      ],
    );
  }
}
