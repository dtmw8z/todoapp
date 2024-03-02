import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/providers/task_provider.dart';
import 'package:todoapp/views/add_task.dart';
import 'views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskProvider(),
      child: MaterialApp(
        title: 'Todo App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(backgroundColor: Colors.purpleAccent),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          '/add_task': (context) => AddTask(),
        },
      ),
    );
  }
}
