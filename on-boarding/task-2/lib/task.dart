enum TaskStatus { pending, completed }

class Task {
  String title;
  String description;
  DateTime dueDate;
  TaskStatus status;

  bool get completed => status == TaskStatus.completed;

  Task(this.title, this.description, this.dueDate, this.status);

  void update(String? title, String? description, DateTime? dueDate,
      TaskStatus? status) {
    this.title = title ?? this.title;
    this.description = description ?? this.description;
    this.dueDate = dueDate ?? this.dueDate;
    this.status = status ?? this.status;
  }
}
