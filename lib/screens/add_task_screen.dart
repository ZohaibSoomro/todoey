import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/modal/task_data.dart';
import 'package:todoey/widgets/round_container.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String? taskTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: RoundedContainer(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'Add Task',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
              textAlign: TextAlign.center,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
              ),
              onChanged: (newValue) {
                setState(() {
                  taskTitle = newValue;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: ElevatedButton(
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(taskTitle.toString());
                  print("'$taskTitle' added to tasks list");
                  Navigator.pop(context);
                },
                child: Text('Add'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
