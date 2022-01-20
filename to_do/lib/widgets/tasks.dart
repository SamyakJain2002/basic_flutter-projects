// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'tasktile.dart';
import 'package:to_do/models/task_data.dart';

class TaskView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskdata, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskname: taskdata.tasks[index].name,
              toggledtask: taskdata.tasks[index].isDone,
              toggledvalue: (checkedbox) {
                taskdata.updatetasks(taskdata.tasks[index]);
              },
              deleteTask: () {
                taskdata.deleteTask(index);
              },
            );
          },
          itemCount: taskdata.tasklength,
        );
      },
    );
  }
}
