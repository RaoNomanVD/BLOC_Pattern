// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ToDoModel _$ToDoModelFromJson(Map<String, dynamic> json) {
  return ToDoModel(
    userId: json['userId'] as int,
    id: json['id'] as int,
    title: json['title'] as String,
    completed: json['completed'] as bool,
  );
}

Map<String, dynamic> _$ToDoModelToJson(ToDoModel instance) => <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'completed': instance.completed,
    };
