// To parse this JSON data, do
//
//     final todo = todoFromJson(jsonString);

import 'dart:convert';

Todo todoFromJson(String str) => Todo.fromJson(json.decode(str));

String todoToJson(Todo data) => json.encode(data.toJson());

class Todo {
    Todo({
        this.id,
        this.stdId,
        this.title,
    });

   
    int? id;
    int? stdId;
    String? title;

    factory Todo.fromJson(Map<String, dynamic> json) => Todo(
        id: json["id"],
        stdId: json["stdId"],
        title: json["title"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "stdId": stdId,
        "title": title,
    };
}
