// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskname;
  final bool toggledtask;
  final toggledvalue;
  final deleteTask;
  TaskTile(
      {required this.taskname,
      required this.toggledtask,
      required this.toggledvalue,
      required this.deleteTask});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteTask,
      title: Text(
        taskname,
        style: TextStyle(
          decoration: toggledtask ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: toggledtask,
        onChanged: toggledvalue,
      ),
    );
  }
}
