import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var books = 0.obs;
  var pens = 0.obs;
  int get sum => books.value + pens.value;

  incrementbooks() {
    books.value++;
  }

  decrementbooks() {
    if (books.value <= 0) {
      Get.snackbar("Buying Book", "can not zero",
          icon: Icon(Icons.alarm),
          barBlur: 20,
          isDismissible: true,
          duration: Duration(seconds: 3));
    } else {
      books.value--;
    }
  }

  // pens
  incrementpens() {
    pens.value++;
  }

  decrementpens() {
    if (pens.value <= 0) {
      Get.snackbar("Buying Pen", "can not zero",
          icon: Icon(Icons.alarm),
          barBlur: 20,
          isDismissible: true,
          duration: Duration(seconds: 3));
    } else {
      pens.value--;
    }
  }
}


/*
class MyController extends GetxController {
  var books = 0.obs;

  increment() {
    books.value++;
  }

  decrement() {
    if (books.value <= 0) {
      Get.snackbar(
        "Buying Books",
        "Can not e less than Zero",
        icon: Icon(Icons.alarm),
        barBlur: 20,
        isDismissible: true,
        duration: Duration(seconds: 3),
      );
    } else {
      books.value--;
    }
  }
}


*/