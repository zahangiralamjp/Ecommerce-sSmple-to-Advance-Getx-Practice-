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
    var productList = [
      Product(
          id: 1,
          name: 'Product 1',
          price: 100.0,
          imageUrl:
              'https://png.pngtree.com/png-vector/20240407/ourmid/pngtree-nike-air-max-97-sneaker-in-silver-png-image_12266447.png'),
      Product(
          id: 2,
          name: 'Product 2',
          price: 200.0,
          imageUrl:
              'https://png.pngtree.com/png-clipart/20230927/original/pngtree-bag-school-png-png-image_13141451.png'),
      Product(
          id: 3,
          name: 'Product 3',
          price: 300.0,
          imageUrl:
              'https://png.pngtree.com/png-vector/20240506/ourmid/pngtree-yellow-school-backpack-vector-png-image_12359479.png'),
    ];
    products.assignAll(productList);
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

  double get totalAmount {
    return cartItems.fold(0, (sum, item) => sum + item.price);
  }
}
