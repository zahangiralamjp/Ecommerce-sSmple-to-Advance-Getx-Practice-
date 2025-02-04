import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'product_controller.dart';

class CartScreen extends StatelessWidget {
  final ProductController productController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Obx(() {
        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: productController.cartItems.length,
                itemBuilder: (context, index) {
                  var product = productController.cartItems[index];
                  return ListTile(
                    leading: Image.network(product.imageUrl),
                    title: Text(product.name),
                    subtitle: Text('\$${product.price.toString()}'),
                    trailing: IconButton(
                      icon: Icon(Icons.remove_circle),
                      onPressed: () {
                        productController.removeFromCart(product);
                      },
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Total Amount: \$${productController.totalAmount.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Implement buy functionality
                Get.snackbar('Success', 'Your order has been placed!');
              },
              child: Text('Buy Now'),
            ),
          ],
        );
      }),
    );
  }
}
