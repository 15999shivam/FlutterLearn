import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "This is a Text",
      ),
      trailing: Checkbox(
        value: false,
        onChanged: (value) {},
      ),
    );
  }
}
