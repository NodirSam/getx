import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/instance_manager.dart';
import 'package:getx/controllers/counter_controller.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterController controller = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Counter Page"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 200,),
            Obx(() =>Text(controller.count.toString())),
            TextButton(
              onPressed: () => controller.increment(),
              child: Text("ASDDASDSd"),
            )
          ],
        ),
      ),
    );
  }
}
