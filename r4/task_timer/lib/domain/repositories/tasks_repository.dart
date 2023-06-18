import '../models/task.dart';

class TasksRepository {
  final _tasks = [
    const Task(0, "Reading", 0, 1),
    const Task(1, "Writing", 100, 678),
    const Task(2, "Learning", 12, 90),
  ];

  Future<List<Task>> getTasks() {
    return Future.value(_tasks);
  }

  Future<Task> getTask(int id) {
    return Future.value(_tasks.firstWhere((element) => element.id == id));
  }

  void addTask(String name) {
    if (_tasks.any((element) => element.name == name)) {
      return;
    }
    _tasks.add(Task(_tasks.length, name, 0, 0));
  }

  void updateTask(Task task) {
    int index = _tasks.indexWhere((element) => element.id == task.id);
    _tasks[index] = task;
  }
}
