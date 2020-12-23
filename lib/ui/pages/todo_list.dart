import 'package:bloc_api/bloc/todo/todo_bloc.dart';
import 'package:bloc_api/bloc/todo/todo_event.dart';
import 'package:bloc_api/bloc/todo/todo_state.dart';
import 'package:bloc_api/model/todo/todo_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:math' as math;

class TodoList extends StatefulWidget {
  TodoList({Key key}) : super(key: key);

  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  TodoBloc _todo;
  List<ToDoModel> data = List<ToDoModel>();

  @override
  void initState() {
    _todo = BlocProvider.of<TodoBloc>(context);
    _todo.add(TodoFetch());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bloc - Simple State Management'),

        ),
        body: BlocListener<TodoBloc, TodoState>(
            bloc: _todo,
            listener: (context, state) {
              if (state is FetchedTodoSuccessedState) {
                data = state.data;
              }
            },
            child: BlocBuilder<TodoBloc, TodoState>(
                bloc: _todo,
                builder: (context, state) {
                  if (state is FetchingTodoState) {
                    return Center(child: CircularProgressIndicator());
                  }
                  return Container(
                    child: ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (BuildContext context, int index) {
                          ToDoModel _item = data[index];
                          return ListTile(
                            leading: Container(
                              width: 60,
                              height: 60,
                              child: Center(child: Text(_item.id.toString())),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color((math.Random().nextDouble() *
                                              0xFFFFFF)
                                          .toInt())
                                      .withOpacity(1.0)),
                            ),
                            title: Text(_item.title),
                            subtitle: Text(_item.userId.toString()),
                            trailing: _item.completed
                                ? Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  )
                                : Icon(Icons.close, color: Colors.red),
                          );
                        }),
                  );
                })));
  }
}
