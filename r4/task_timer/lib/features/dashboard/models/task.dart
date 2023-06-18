import 'package:copy_with_extension/copy_with_extension.dart';

import 'task_list_element.dart';

part 'task.g.dart';

@CopyWith()
class Task extends TaskListElement {
  final int id;
  final String name;
  final int sessions;
  final Duration totalDuration;
  final bool isSelected;

  const Task(this.id, this.name, this.sessions, this.totalDuration, this.isSelected)
      : super();

  @override
  List<Object?> get props => [id, name, sessions, totalDuration, isSelected];
}
