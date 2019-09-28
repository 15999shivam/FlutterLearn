import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey/modals/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey/modals/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final taskItem = taskData.tasks[index];
            return TaskTile(
              taskTitle: taskItem.name,
              isChecked: taskItem.isDone,
              checkboxCallback: (value) {
                taskData.changeCompletedState(index);
              },
              isLongPressed: () {
                taskData.deleteTask(index);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
