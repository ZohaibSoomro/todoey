import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/modal/task_data.dart';
import 'package:todoey/widgets/round_container.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Consumer<TaskData>(
        builder: (context, taskData, child) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final task = taskData.tasks[index];
              return TaskTile(
                taskTitle: task.taskTitle,
                isChecked: task.isDone,
                onLongPress: () {
                  taskData.deleteTask(task);
                },
                onCheckboxSelected: (value) {
                  taskData.updateTask(task);
                },
              );
            },
            itemCount: taskData.taskCount,
          );
        },
      ),
    );
  }
}
