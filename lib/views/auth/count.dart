import 'package:ecommerce_app/controllers/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Counter extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            counterController.increment();
          }),
      body: Container(
        color: Colors.white,
        child: Obx(
          () => Center(child: Text('${counterController.count.value}')),
        ),
      ),
    );
  }
}
