import 'package:bloc_api/bloc/todo/todo_bloc.dart';
import 'package:bloc_api/ui/pages/todo_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TodoBloc>(
          create: (context) => TodoBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Bloc - State',
        theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: TodoList(),
      ),
    );
  }
}
