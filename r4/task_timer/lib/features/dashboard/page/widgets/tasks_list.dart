import 'package:flutter/material.dart';

import '../../models/task.dart';
import '../../models/task_list_element.dart';
import 'add_task_view.dart';
import 'task_view.dart';

class TasksList extends StatelessWidget {
  final List<TaskListElement> tasks;

  const TasksList({super.key, required this.tasks});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          var task = tasks[index];
          if (task is Task) {
            return TaskView(task: task);
          }
          return const AddTaskView();
        });
  }
}
