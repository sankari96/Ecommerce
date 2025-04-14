// controllers/product_controller.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/Model/Modelscreen.dart';
 
class ProductController extends GetxController {
  var product = Welcome().obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchProduct();
    super.onInit();
  }

  void fetchProduct() async {
    try {
      isLoading(true);

      // Dummy JSON (replace with actual API call or service)
      final jsonString = '''{
        "id": 1,
        "title": "Product Title",
        "price": 29.99,
        "description": "Product description goes here.",
        "category": "Electronics",
        "image": "https://picsum.photos/250?image=9",
        "rating": { "rate": 4.5, "count": 120 }
      }''';

      product.value = welcomeFromJson(jsonString) as Welcome;
    } finally {
      isLoading(false);
    }
  }
}

// views/product_view.dart



class ProductView extends StatelessWidget {
  final ProductController controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product Details')),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }

        final product = controller.product.value;

        return SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.network(product.image ?? "https://picsum.photos/250?image=9", height: 200),
              ),
              SizedBox(height: 16),
              Text(product.title ?? "Product Title", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text("\$21000 {product.price?.toStringAsFixed(2)}", style: TextStyle(fontSize: 20, color: Colors.green)),
              SizedBox(height: 8),
              Text(product.description ?? "Product description goes here."),
              SizedBox(height: 8),
              Text("Category: ${product.category ?? "Electronics"}", style: TextStyle(color: Colors.grey)),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber),
                  SizedBox(width: 4),
                  Text("${product.rating?.rate ?? 0} (${product.rating?.count} reviews)"),
                ],
              ),
            ],
          ),
        );
      }),
    );
  }
}
void main() {
  runApp(GetMaterialApp(
    home: ProductView(),
  ));
}



