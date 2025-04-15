// views/empty_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Homescreencontrolls.dart';

class EmptyView extends StatefulWidget {
  EmptyView({super.key});

  @override
  State<EmptyView> createState() => _EmptyViewState();
}

class _EmptyViewState extends State<EmptyView> {
  final controller = Get.put(EmptyController());
  @override
  void initState() {
    controller.loadFromJson("");
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Routes Viewer")),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(
              child: CircularProgressIndicator(
            color: Colors.black,
          ));
        }

        if ((controller.empty.value.routes?.isEmpty ?? true)) {
          return const Center(child: Text("No routes available"));
        }

        return ListView.builder(
          itemCount: controller.empty.value.routes!.length,
          itemBuilder: (context, index) {
            final route = controller.empty.value.routes![index];
            return Card(
              margin: const EdgeInsets.all(8),
              child: ListTile(
                title: Text(route.endpoint ?? "No endpoint"),
                subtitle: Text("Method: ${route.method?.name ?? "N/A"}"),
              ),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.download),
        onPressed: () {
          // Load sample JSON for testing (replace this with your actual data source)
          const sampleJson = '''
          {
            "routes": [
              {
                "uuid": "1",
                "documentation": "Sample route",
                "method": "get",
                "endpoint": "/api/products",
                "responses": [],
                "enabled": true,
                "responseMode": null,
                "type": "http"
              }
            ]
          }
          ''';

          controller.loadFromJson(sampleJson);
        },
      ),
    );
  }
}
