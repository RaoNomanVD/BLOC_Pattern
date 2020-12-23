import 'package:json_annotation/json_annotation.dart';

part 'todo_model.g.dart';

@JsonSerializable(nullable: true)
class ToDoModel {
  @JsonKey(name: 'userId')
  final int userId;
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'completed')
  final bool completed;



  ToDoModel({this.userId, this.id, this.title, this.completed});

  factory ToDoModel.fromJson(Map<String, dynamic> json) =>
      _$ToDoModelFromJson(json);

  Map<String, dynamic> toJson() => _$ToDoModelToJson(this);
}
