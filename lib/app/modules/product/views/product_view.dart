import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/product_controller.dart';

class ProductView extends GetView<ProductController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProductView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ProductView is working',
              style: TextStyle(fontSize: 20),
            ),
            Obx(
              () => Text(
                '${controller.count}',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              controller.plus();
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              controller.minus();
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
