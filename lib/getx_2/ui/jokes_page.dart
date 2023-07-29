import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/getx_2/controller/jokes_controller.dart';
import 'package:getx/getx_2/service/api_service.dart';

class JokesPage extends StatelessWidget {
  const JokesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final JokesController controller = Get.put(JokesController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Jokes Page"),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            itemCount: controller.jokes!.length,
            shrinkWrap: true,
            itemBuilder: (context, index) => ListTile(
              title: Text(controller.jokes![index].setup),
              subtitle: Text(controller.jokes![index].punchline),
            ),
          );
        }
      }),
    );
  }
}
