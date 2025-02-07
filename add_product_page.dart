// Add Product Page
import 'package:flutter/material.dart';
import 'package:flutter_demo_ecommerce/product_controller.dart';
import 'package:flutter_demo_ecommerce/product_model.dart';
import 'package:get/get.dart';

class AddProductPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Product')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Product Name'),
            ),
            TextField(
              controller: priceController,
              decoration: InputDecoration(labelText: 'Product Price'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: categoryController,
              decoration: InputDecoration(labelText: 'Category'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final product = Product(
                  name: nameController.text,
                  price: double.parse(priceController.text),
                  category: categoryController.text,
                );
                productController.addProduct(product);
                Get.back();
              },
              child: Text('Add Product'),
            ),
          ],
        ),
      ),
    );
  }
}
