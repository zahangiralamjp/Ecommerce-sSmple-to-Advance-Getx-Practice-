// Product Controller
import 'package:get/get.dart';

import 'product_model.dart';

class ProductController extends GetxController {
  var products = <Product>[].obs;
  var cart = <Product>[].obs;
  var favorites = <Product>[].obs;

  double get totalAmount => cart.fold(0, (sum, item) => sum + item.price);

  void addProduct(Product product) {
    products.add(product);
  }

  void editProduct(int index, Product updatedProduct) {
    products[index] = updatedProduct;
  }

  void deleteProduct(int index) {
    products.removeAt(index);
  }

  void addToCart(Product product) {
    cart.add(product);
  }

  void addToFavorites(Product product) {
    favorites.add(product);
  }
}

final ProductController productController = Get.put(ProductController());
