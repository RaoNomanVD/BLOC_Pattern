import 'dart:io';

import 'package:bloc_api/provider/profile_detail/todo_provider.dart';
import 'package:bloc_api/provider/profile_detail/todo_rest_api.dart';
import 'package:dio/dio.dart';

class Repository {
  static final Repository _repo = Repository._internal();

  Dio _dio;

  TodoProvider _todoProvider;

  factory Repository() {
    return _repo;
  }

  Repository._internal() {
    _dio = Dio();
    _todoProvider = TodoProvider(TodoRestApi(_dio));
  }

  TodoProvider get todoProvider => _todoProvider;
}
