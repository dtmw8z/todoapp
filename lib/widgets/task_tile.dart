import 'package:flutter/material.dart';

class TodoTask extends StatelessWidget {
  final String title;
  final bool isDone;
  final Function(bool?) onChanged;

  const TodoTask(
      {super.key,
      required this.title,
      required this.isDone,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: Checkbox(
        value: isDone,
        onChanged: onChanged,
      ),
    );
  }
}
