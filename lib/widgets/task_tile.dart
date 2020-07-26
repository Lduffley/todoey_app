import 'package:flutter/material.dart';
import 'package:todoeyapp/widgets/task_check_box.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;

  const TaskTile({this.isChecked, this.taskTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
//        onChanged: toggleCheckboxState,
        ));
  }
}
