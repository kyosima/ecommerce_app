import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() {
    count++;
    update();
  }

  void decrement() {
    count--;
    update();
  }
}
