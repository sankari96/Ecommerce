import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:project1/Model/Seachlistcontrolls.dart';

class TodoView extends StatefulWidget {
  @override
  State<TodoView> createState() => _TodoViewState();
}

class _TodoViewState extends State<TodoView> {
  final TodoController controller = Get.put(TodoController());
  @override
  void initState() {
    controller.fetchTodo();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Todo")),
      body: Obx(() {
        if (controller.isLoading.isTrue) {
          return Center(child: CircularProgressIndicator());
        }else{
 final todo = controller.todo.value;

        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              contentPadding: EdgeInsets.all(16),
              title: Text(todo.title ?? "No title",
                  style: TextStyle(fontSize: 20)),
              subtitle: Text("ID: ${todo.id} | User ID: ${todo.userId}"),
              trailing: Switch(
                value: todo.completed ?? false,
                onChanged: (value) => controller.toggleCompleted(),
              ),
            ),
          ),
        );
        }

       
      }),
    );
  }
}
// adjust path

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: TodoView(),
  ));
}
