import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:getx/translations/controller/username_controller.dart';

class TranslationPage extends StatelessWidget {
  const   TranslationPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    UserNameController controller = Get.put(UserNameController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Translation with GetX"),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value) {
                  controller.changeUserName(value);
                },
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: "name".tr,
                ),
              ),
              const SizedBox(height: 100,),
              Obx(
                () => Text("hello".trParams({
                  "someone": controller.userName.value,
                })),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (Get.locale == Locale("uz", "UZ")) {
            Get.updateLocale(Locale("en", "EN"));
          } else {
            Get.updateLocale(Locale("uz", "UZ"));
          }
        },
        child: Icon(Icons.change_circle),
      ),
    );
  }
}
