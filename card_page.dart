import 'package:flutter/material.dart';
import 'package:flutter_application_3/controller.dart';
import 'package:get/get.dart';

// MyCartPage
class MyCartPage extends StatelessWidget {
  MyCartPage({super.key});
  final MyController c = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  "Books",
                  style: TextStyle(fontSize: 30),
                ),
                Expanded(child: Container()),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent),
                  child: IconButton(
                      onPressed: () => c.incrementbooks(),
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ),
                const SizedBox(
                  width: 20,
                ),
                Obx(() => Text(
                      "${c.books}",
                      style: const TextStyle(fontSize: 30),
                    )),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent),
                  child: IconButton(
                      onPressed: () => c.decrementbooks(),
                      icon: const Icon(
                        Icons.remove,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            //           pens
            Row(
              children: [
                const Text(
                  "Pens",
                  style: TextStyle(fontSize: 30),
                ),
                Expanded(child: Container()),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent),
                  child: IconButton(
                      onPressed: () => c.incrementpens(),
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ),
                const SizedBox(
                  width: 20,
                ),
                Obx(() => Text(
                      "${c.pens}",
                      style: const TextStyle(fontSize: 30),
                    )),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent),
                  child: IconButton(
                      onPressed: () => c.decrementpens(),
                      icon: const Icon(
                        Icons.remove,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
            // sum
            const SizedBox(
              height: 50,
            ),
            Obx(
              () => Text(
                " Total ${c.sum.toString()}",
                style: const TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



/*
class MyCartPage extends StatelessWidget {
  MyCartPage({super.key});
  final MyController c = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Row(
              children: [
                const Text(
                  "Book",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.amber,
                  ),
                ),
                Expanded(child: Container()),
                Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.redAccent),
                    child: IconButton(
                        onPressed: () => c.increment(),
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ))),
                //
                const SizedBox(
                  width: 20,
                ),
                Obx(() => Text(
                      "${c.books.toString()}",
                      style: const TextStyle(
                        fontSize: 30,
                      ),
                    )),
                const SizedBox(
                  width: 20,
                ),
                Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.redAccent),
                    child: IconButton(
                        onPressed: () => c.decrement(),
                        icon: const Icon(
                          Icons.remove,
                          color: Colors.white,
                        ))),
              ],
            ),
          )
        ],
      ),
    );
  }
}


*/