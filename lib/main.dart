import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx/controllers/ui/counter_page.dart';
import 'package:getx/getx_2/ui/jokes_page.dart';
import 'package:getx/translations/ui/translation_page.dart';
import 'package:getx/translations/utils/translation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),
      locale: Locale("uz", "UZ"),
      fallbackLocale: Locale("en", "US"),
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: TranslationPage(),
    );
  }
}
