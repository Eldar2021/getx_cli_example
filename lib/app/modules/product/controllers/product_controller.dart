import 'package:get/get.dart';

class ProductController extends GetxController {
  //TODO: Implement ProductController

  final RxInt count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void plus() => count.value++;

  void minus() => count.value--;
}
