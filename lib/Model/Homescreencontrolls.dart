
// controllers/empty_controller.dart
import 'package:get/get.dart';
import 'package:project1/Model/Modelscreen2.dart';
// Adjust path based on your file structure
import 'dart:convert';

class EmptyController extends GetxController {
  var empty = Empty().obs;
  var isLoading = false.obs;

  void loadFromJson(String jsonString) {
    try {
      isLoading(true);
      final data = emptyFromJson(jsonString);
      empty.value = data;
    } catch (e) {
      print("Error loading JSON: $e");
    } finally {
      isLoading(false);
    }
  }

  void printRoutes() {
    for (var route in empty.value.routes ?? []) {
      print("Route: ${route.endpoint} - ${route.method}");
    }
  }
}
