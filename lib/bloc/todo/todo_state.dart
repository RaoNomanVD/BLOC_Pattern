
import 'package:bloc_api/model/todo/todo_model.dart';
import 'package:meta/meta.dart';

@immutable
abstract class TodoState {}

class InitializeTodoState extends TodoState {}

class FetchingTodoState extends TodoState {}

class FetchedTodoSuccessedState extends TodoState {
  final List<ToDoModel> data;

  FetchedTodoSuccessedState({this.data});
}

class FetchTodoFailedState extends TodoState {
  final String message;
  final int errorcode;
  FetchTodoFailedState({this.message, this.errorcode});
}

