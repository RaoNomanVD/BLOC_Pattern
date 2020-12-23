import 'package:bloc_api/model/todo/todo_model.dart';
import 'package:bloc_api/provider/profile_detail/todo_rest_api.dart';

class TodoProvider {
  TodoRestApi _profileDetailRestApi;

  TodoProvider(TodoRestApi api) : assert(api != null) {
    _profileDetailRestApi = api;
  }

  Future<List<ToDoModel>> getList() async {
    return _profileDetailRestApi.getListOfUser();
  }
}
