import 'package:equatable/equatable.dart';

import '../../../domain/models/task.dart';

abstract class TaskTimerState extends Equatable {
  const TaskTimerState();
}

class TaskTimerInitial extends TaskTimerState {
  const TaskTimerInitial() : super();

  @override
  List<Object?> get props => [];
}

class TaskTimerUpdate extends TaskTimerState {
  final Task task;
  final Duration duration;
  final bool isTimerEnabled;

  const TaskTimerUpdate(this.task, this.duration, this.isTimerEnabled);

  @override
  List<Object?> get props => [task, duration, isTimerEnabled];
}
