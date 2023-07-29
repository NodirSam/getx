import 'package:get/get.dart';

class CounterController extends GetxController{
  var count = 0.obs; //obs qo'yilishi shart
  void increment(){
    count++;
  }

}