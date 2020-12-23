import 'package:bloc_api/model/todo/todo_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'todo_rest_api.g.dart';

@RestApi()
abstract class TodoRestApi {
  factory TodoRestApi(Dio dio, {String baseUrl}) = _TodoRestApi;

  @GET('https://jsonplaceholder.typicode.com/todos')
  Future<List<ToDoModel>> getListOfUser();
}
