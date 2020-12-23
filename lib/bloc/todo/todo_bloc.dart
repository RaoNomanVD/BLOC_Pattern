import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:bloc_api/model/todo/todo_model.dart';
import 'package:bloc_api/provider/profile_detail/todo_provider.dart';
import 'package:bloc_api/provider/repository.dart';

import 'bloc.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final TodoProvider todoProvider = Repository().todoProvider;

  TodoBloc({TodoState initialState}) : super(initialState);

  @override
  TodoState get initialState => InitializeTodoState();

  @override
  Stream<TodoState> mapEventToState(TodoEvent event) async* {
    if (event is TodoFetch) {
      yield FetchingTodoState();
      try {
        List<ToDoModel> _result = await todoProvider.getList();
        yield FetchedTodoSuccessedState(data: _result);
      } catch (e) {
        yield FetchTodoFailedState(message: 'Failed to load data');
      }
    }
  }
}
