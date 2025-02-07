// Edit Product Page
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_ecommerce/product_controller.dart';
import 'package:flutter_demo_ecommerce/product_model.dart';
import 'package:get/get.dart';

class EditProductPage extends StatelessWidget {
  final int index;
  EditProductPage({required this.index});

  @override
  Widget build(BuildContext context) {
    final product = productController.products[index];
    final nameController = TextEditingController(text: product.name);
    final priceController =
        TextEditingController(text: product.price.toString());
    final categoryController = TextEditingController(text: product.category);

    return Scaffold(
      appBar: AppBar(title: Text('Edit Product')),
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
                final updatedProduct = Product(
                  name: nameController.text,
                  price: double.parse(priceController.text),
                  category: categoryController.text,
                );
                productController.editProduct(index, updatedProduct);
                Get.back();
              },
              child: Text('Save Changes'),
            ),
          ],
        ),
      ),
    );
  }
}
