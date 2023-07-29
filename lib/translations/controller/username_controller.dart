import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class UserNameController extends GetxController{
  var userName = "".obs;

  changeUserName(String name){
    userName.value = name;
    notifyChildrens();
  }
}