import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/modal/task_data.dart';
import 'package:todoey/screens/tasks_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => TaskData(),
    child: MaterialApp(
      home: TasksScreen(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}
