class Task {
  String taskTitle;
  bool isDone;

  Task({required this.taskTitle, this.isDone = false});

  void toggleTaskIsDone() {
    isDone = !isDone;
  }
}
