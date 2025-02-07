import 'package:flutter/material.dart';
import 'package:flutter_demo_ecommerce/product_list_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-commerce App',
      home: ProductListPage(),
    );
  }
}
