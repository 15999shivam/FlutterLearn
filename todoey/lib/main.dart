import 'package:flutter/material.dart';
import 'package:todoey/screens/TasksScreen.dart';
import 'package:provider/provider.dart';
import 'package:todoey/modals/task_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      builder: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
