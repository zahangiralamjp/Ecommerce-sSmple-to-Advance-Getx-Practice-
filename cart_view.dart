import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'product_controller.dart';

class CartView extends StatelessWidget {
  final ProductController productController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: productController.cartItems.length,
          itemBuilder: (context, index) {
            final product = productController.cartItems[index];
            return ListTile(
              leading: Image.network(product.imageUrl),
              title: Text(product.name),
              subtitle: Text('\$${product.price.toString()}'),
              trailing: IconButton(
                icon: Icon(Icons.remove_shopping_cart),
                onPressed: () {
                  productController.removeFromCart(product);
                },
              ),
            );
          },
        );
      }),
    );
  }
}
