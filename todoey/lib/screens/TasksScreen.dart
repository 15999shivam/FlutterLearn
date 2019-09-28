import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_list.dart';
import 'add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey/modals/task_data.dart';
import 'package:todoey/modals/task.dart';
import 'package:flutter/services.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.lightBlueAccent));
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => AddTaskScreen(),
            );
          },
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(Icons.add),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                  top: 30.0, bottom: 20.0, left: 30.0, right: 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    child: Text(
                      "${Provider.of<TaskData>(context).taskCount}",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.lightBlueAccent,
                          fontWeight: FontWeight.w700),
                    ),
                    backgroundColor: Colors.white,
                    radius: 30,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Todoey",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
//                Text(
//                  "${Provider.of<TaskData>(context).taskCount} Tasks",
//                  style: TextStyle(
//                    color: Colors.white,
//                    fontSize: 18,
//                  ),
//                ),
//                SizedBox(
//                  height: 5.0,
//                ),
                  Text(
                    "Long Press to delete any task",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                padding: EdgeInsets.only(
                    left: 15.0, right: 15.0, bottom: 50.0, top: 10.0),
                child: TasksList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
