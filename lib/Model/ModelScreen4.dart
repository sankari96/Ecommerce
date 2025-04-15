
// To parse this JSON data, do
//
//     final empty = emptyFromJson(jsonString);

import 'dart:convert';

Empty emptyFromJson(String str) => Empty.fromJson(json.decode(str));

String emptyToJson(Empty data) => json.encode(data.toJson());

class Empty {
    int? userId;
    int? id;
    String? title;
    bool? completed;

    Empty({
        this.userId,
        this.id,
        this.title,
        this.completed,
    });

    factory Empty.fromJson(Map<String, dynamic> json) => Empty(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        completed: json["completed"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "completed": completed,
    };
}
