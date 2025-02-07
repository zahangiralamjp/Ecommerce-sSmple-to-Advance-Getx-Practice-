// Product List Page
import 'package:flutter/material.dart';
import 'package:flutter_demo_ecommerce/cart_edit_page.dart';
import 'package:flutter_demo_ecommerce/edit_product_page.dart';
import 'package:flutter_demo_ecommerce/favorites_page.dart';
import 'package:flutter_demo_ecommerce/product_controller.dart';
import 'package:get/get.dart';
import 'add_product_page.dart';

class ProductListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => Get.to(() => CartPage()),
          ),
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () => Get.to(() => FavoritesPage()),
          ),
        ],
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: productController.products.length,
          itemBuilder: (context, index) {
            final product = productController.products[index];
            return ListTile(
              title: Text(product.name),
              subtitle: Text('\$${product.price}'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () =>
                        Get.to(() => EditProductPage(index: index)),
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () => productController.deleteProduct(index),
                  ),
                  IconButton(
                    icon: Icon(Icons.add_shopping_cart),
                    onPressed: () => productController.addToCart(product),
                  ),
                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    onPressed: () => productController.addToFavorites(product),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => AddProductPage()),
        child: Icon(Icons.add),
      ),
    );
  }
}
