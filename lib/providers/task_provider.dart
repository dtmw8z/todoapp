import 'package:flutter/foundation.dart';
import '../models/task.dart';

class TaskProvider with ChangeNotifier {
  final List<Task> _tasks = [];

  List<Task> get tasks {
    return [..._tasks];
  }

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void removeTask(String id) {
    _tasks.removeAt(_tasks.indexWhere((task) => task.id == id));
    notifyListeners();
  }

  void updateTask(String id, bool isDone) {
    final taskIndex = _tasks.indexWhere((task) => task.id == id);
    _tasks[taskIndex] = Task(
      id: _tasks[taskIndex].id,
      title: _tasks[taskIndex].title,
      isDone: isDone,
    );
    notifyListeners();
  }
}
