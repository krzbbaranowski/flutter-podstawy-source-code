import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_podstawy_utilities/colors/my_colors.dart';
import 'package:flutter_podstawy_utilities/constants/dimens.dart';

import '../../../di/di.dart';
import '../cubit/task_timer_cubit.dart';
import '../cubit/task_timer_state.dart';
import 'nav_params/task_timer_nav_parameter.dart';
import 'widgets/task_timer_updated_state_view.dart';

class TaskTimerPage extends StatefulWidget {
  final TaskTimerNavParameter parameter;

  const TaskTimerPage(this.parameter, {Key? key}) : super(key: key);

  @override
  State<TaskTimerPage> createState() => _TaskTimerPageState();
}

class _TaskTimerPageState extends State<TaskTimerPage> {
  late final TaskTimerCubit _cubit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.eerieBlack,
        body: SafeArea(
          child: _buildPageContent(),
        ));
  }

  Widget _buildPageContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: Dimens.hugeMargin, horizontal: Dimens.hugeMargin),
      child: BlocProvider<TaskTimerCubit>(create: (context) {
        _cubit = sl<TaskTimerCubit>();
        _cubit.initialize(widget.parameter.taskId);
        return _cubit;
      }, child: BlocBuilder<TaskTimerCubit, TaskTimerState>(
        builder: (context, state) {
          if (state is TaskTimerUpdate) {
            return TaskTimerUpdatedStateView(
              state: state,
            );
          }

          return const Center(child: CircularProgressIndicator());
        },
      )),
    );
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }
}
