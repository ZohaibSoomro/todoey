import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {required this.taskTitle,
      required this.isChecked,
      this.onCheckboxSelected,
      this.onLongPress});

  final String taskTitle;
  final bool isChecked;
  final Function(bool)? onCheckboxSelected;
  final Function()? onLongPress;

  @override
  Widget build(BuildContext context) {
    
    return ListTile(
      onLongPress: onLongPress,
      title: Text(
        taskTitle,
        style: TextStyle(
          fontSize: 18,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (newValue) {
          onCheckboxSelected!.call(newValue!);
        },
      ),
    );
  }
}
