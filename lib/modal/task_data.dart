import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/modal/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(taskTitle: "Buy milk"),
    Task(taskTitle: "Add water to jug"),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String taskTitle) {
    final task = Task(taskTitle: taskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleTaskIsDone();
    notifyListeners();
  }
}
