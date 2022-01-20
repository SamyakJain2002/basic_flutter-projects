import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'task.dart';
import 'package:flutter/foundation.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [Task(name: 'Buy Milk')];

  int get tasklength {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addto(String task) {
    final taskname = Task(name: task);
    _tasks.add(taskname);
    notifyListeners();
  }

  void updatetasks(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
