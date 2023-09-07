import 'package:task_2/task.dart';

class TaskManager {
  final List<Task> _tasks = [];

  TaskManager();

  void _viewTask(int i) {
    print(
        "$i - ${_tasks[i].title} - ${_tasks[i].description} - ${_tasks[i].dueDate} - ${_tasks[i].status}");
  }

  void addTask(Task task) {
    _tasks.add(task);
  }

  void viewTasks() {
    for (int i = 0; i < _tasks.length; i++) {
      _viewTask(i);
    }
  }

  void viewCompletedTasks() {
    for (int i = 0; i < _tasks.length; i++) {
      if (_tasks[i].completed) {
        _viewTask(i);
      }
    }
  }

  void viewPendingTasks() {
    for (int i = 0; i < _tasks.length; i++) {
      if (!_tasks[i].completed) {
        _viewTask(i);
      }
    }
  }

  void editTask(
    int i, {
    String? title,
    String? description,
    DateTime? dueDate,
    TaskStatus? status,
  }) {
    _tasks[i].update(title, description, dueDate, status);
  }

  void deleteTask(int i) {
    _tasks.removeAt(i);
  }
}
