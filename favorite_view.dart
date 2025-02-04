import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'product_controller.dart';

class FavoriteView extends StatelessWidget {
  final ProductController productController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: productController.favoriteItems.length,
          itemBuilder: (context, index) {
            final product = productController.favoriteItems[index];
            return ListTile(
              leading: Image.network(product.imageUrl),
              title: Text(product.name),
              subtitle: Text('\$${product.price.toString()}'),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  productController.removeFromFavorites(product);
                },
              ),
            );
          },
        );
      }),
    );
  }
}
