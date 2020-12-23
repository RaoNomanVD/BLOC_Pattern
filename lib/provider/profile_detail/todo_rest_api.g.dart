// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_rest_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _TodoRestApi implements TodoRestApi {
  _TodoRestApi(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<List<ToDoModel>> getListOfUser() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<List<dynamic>>(
        'https://jsonplaceholder.typicode.com/todos',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    var value = _result.data
        .map((dynamic i) => ToDoModel.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }
}
