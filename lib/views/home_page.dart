import 'package:flutter/material.dart';
import 'package:todoapp/providers/task_provider.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/widgets/task_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final tasks = Provider.of<TaskProvider>(context).tasks;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            final task = tasks[index];
            return TodoTask(
              title: task.title,
              isDone: task.isDone,
              onChanged: (value) {
                Provider.of<TaskProvider>(context, listen: false)
                    .updateTask(task.id, value!);
              },
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/add_task');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
