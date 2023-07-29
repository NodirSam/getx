import 'package:get/get_navigation/src/root/internacionalization.dart';

class Messages extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    "uz_UZ" : {
      "hello": "Assalomu alaykum @someone",
      "bye": "Xayr salomat bo'ling @someone",
      "name": "Ism",
    },
    "en_EN" : {
      "hello": "Hello @someone",
      "bye": "Bye @someone",
      "name": "Name"
    },

  };

}