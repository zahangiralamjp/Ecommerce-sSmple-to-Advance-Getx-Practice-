import 'package:get/get.dart';

import 'product_model.dart';

class ProductController extends GetxController {
  var products = <Product>[].obs;
  var cartItems = <Product>[].obs;
  var favoriteItems = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() {
    // Dummy data for products
    products.addAll([
      Product(
          id: 1,
          name: 'Product 1',
          price: 100.0,
          imageUrl:
              'https://static-01.daraz.com.bd/p/38a8e822da9fe774e7381188a8db832a.jpg'),
      Product(
          id: 2,
          name: 'Product 2',
          price: 200.0,
          imageUrl:
              'https://assets.ajio.com/medias/sys_master/root/20220506/lBcg/6274cf7aaeb26921af5898c6/-473Wx593H-463591058-blue-MODEL2.jpg'),
      Product(
          id: 3,
          name: 'Product 3',
          price: 300.0,
          imageUrl:
              'https://static-01.daraz.com.bd/p/38a8e822da9fe774e7381188a8db832a.jpg'),
    ]);
  }

  void addToCart(Product product) {
    cartItems.add(product);
  }

  void removeFromCart(Product product) {
    cartItems.remove(product);
  }

  void addToFavorites(Product product) {
    favoriteItems.add(product);
  }

  void removeFromFavorites(Product product) {
    favoriteItems.remove(product);
  }
}
