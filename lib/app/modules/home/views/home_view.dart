import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../product/controllers/product_controller.dart';
import 'package:get_cli_project/app/routes/app_pages.dart';

class HomeView extends GetView<ProductController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(()=> Text(
            'HomeView is working ${controller.count}',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.PRODUCT);
        },
        child: Icon(Icons.arrow_right_alt_sharp),
      ),
    );
  }
}
