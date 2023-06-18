import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_podstawy_utilities/colors/my_colors.dart';
import 'package:flutter_podstawy_utilities/constants/dimens.dart';

import '../../cubit/dashboard_cubit.dart';
import '../../models/task.dart';
import 'task_view_content.dart';

class TaskView extends StatelessWidget {
  final Task task;

  const TaskView({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    final backgroundColor =
        task.isSelected ? MyColors.upMaroon : MyColors.charlestonGreen;
    final borderColor =
        task.isSelected ? MyColors.fireEngineRed : MyColors.charlestonGreen;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.smallMargin),
      child: TaskViewContent(
        backgroundColor: backgroundColor,
        borderColor: borderColor,
        text: task.name,
        onTap: () => onClickAction(context),
      ),
    );
  }

  void onClickAction(BuildContext context) {
    BlocProvider.of<DashboardCubit>(context, listen: false).selectTask(task);
  }
}
