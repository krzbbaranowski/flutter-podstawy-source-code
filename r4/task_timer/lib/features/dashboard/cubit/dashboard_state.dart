import 'package:equatable/equatable.dart';
import '../models/task.dart';
import '../models/task_list_element.dart';

abstract class DashboardState extends Equatable {
  const DashboardState();

  @override
  List<Object?> get props => [];
}

class DashboardInitial extends DashboardState {
  const DashboardInitial() : super();
}

class DashboardLoaded extends DashboardState {
  final List<TaskListElement> tasks;
  final bool isAddTaskEntryVisible;

  Task get selectedTask =>
      tasks.whereType<Task>().firstWhere((task) => task.isSelected);

  const DashboardLoaded(this.tasks, this.isAddTaskEntryVisible) : super();

  @override
  List<Object?> get props => [tasks, isAddTaskEntryVisible];
}
