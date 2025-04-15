import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:project1/Model/ModelScreen4.dart';

// adjust path if needed

class TodoController extends GetxController {
  var todo = Empty().obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchTodo();
    super.onInit();
  }

  void fetchTodo() async {
    isLoading(true);
    try {
      final jsonString = '''{
        "userId": 1,
        "id": 1,
        "title": "Finish Flutter UI with GetX",
        "completed": false
      }''';

      final data = emptyFromJson(jsonString);
      todo.value = data;
    } catch (e) {
      print("Error loading todo: $e");
    } finally {
      isLoading(false);
    }
  }

  void toggleCompleted() {
    todo.update((val) {
      if (val != null) {
        val.completed = !(val.completed ?? false);
      }
    });
  }
}

