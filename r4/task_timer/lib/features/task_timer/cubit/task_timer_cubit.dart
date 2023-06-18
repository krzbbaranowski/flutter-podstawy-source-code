import 'dart:async';

import 'package:task_timer/features/task_timer/cubit/task_timer_state.dart';

import '../../../domain/models/task.dart';
import '../../../domain/repositories/tasks_repository.dart';
import '../../base/cubit_base.dart';

class TaskTimerCubit extends CubitBase<TaskTimerState> {
  late Task _task;
  late Timer _timer;
  int _secondsPassed = 0;
  bool _isTimerEnabled = true;

  final TasksRepository tasksRepository;

  TaskTimerCubit(this.tasksRepository) : super(const TaskTimerInitial());

  Future<void> initialize(int taskId) async {
    _task = await tasksRepository.getTask(taskId);

    _isTimerEnabled = true;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_isTimerEnabled) {
        _onTimerTick();
      }
    });
  }


  void stopTimer() {
    int totalSessions = _task.sessions + 1;
    int totalSeconds = _secondsPassed + _task.totalSeconds;

    tasksRepository
        .updateTask(Task(_task.id, _task.name, totalSessions, totalSeconds));
    navigationService.pop();
  }


  void toggleTimer() {
    _isTimerEnabled = !_isTimerEnabled;
    var duration = Duration(seconds: _secondsPassed);
    emit(TaskTimerUpdate(_task, duration, _isTimerEnabled));
  }


  void _onTimerTick() {
    _secondsPassed++;
    var duration = Duration(seconds: _secondsPassed);
    emit(TaskTimerUpdate(_task, duration, _isTimerEnabled));
  }


  @override
  Future<void> close() {
    _timer.cancel();
    return super.close();
  }
}
